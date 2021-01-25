import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vendeta/src/models/index.dart';
import 'package:url_launcher/url_launcher.dart';

const String storeUrl = 'https://uk.farnell.com/';
String datasheetUrl = '';

TextStyle linkStyle = const TextStyle(
  color: Colors.indigo,
  decoration: TextDecoration.underline,
);

Widget buildAboutDialog(
  BuildContext context,
  TapGestureRecognizer storeTapRecognizer,
  TapGestureRecognizer datasheetTapRecognizer,
  Product product,
) {
  Future<void> openUrl(String url) async {
    // Close the pop-up dialog.
    Navigator.pop(context);

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  if (product.productDatasheets.isNotEmpty) {
    datasheetUrl = '${product.productDatasheets[0].url}';
  } else {
    datasheetUrl = '';
  }
  return AlertDialog(
    title: const Text(
      'Product description',
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildAboutText(
          storeTapRecognizer,
          datasheetTapRecognizer,
          linkStyle,
          product,
        ),
        //_buildLogoAttribution(),
      ],
    ),
    actions: <Widget>[
      Row(
        children: <Widget>[
          if (datasheetUrl != '')
            FlatButton(
              onPressed: () {
                openUrl(datasheetUrl);
              },
              textColor: Theme.of(context).primaryColor,
              child: const Text('Download Datasheet'),
            ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            textColor: Theme.of(context).primaryColor,
            child: const Text('Close'),
          )
        ],
      ),
    ],
  );
}

Widget _buildAboutText(
  TapGestureRecognizer storeTapRecognizer,
  TapGestureRecognizer datasheetTapRecognizer,
  TextStyle linkStyle,
  Product product,
) {
  if (datasheetUrl != '') {
    return RichText(
      text: TextSpan(
        text: '${product.displayName}\n\n',
        style: const TextStyle(color: Colors.black87),
        children: <TextSpan>[
          const TextSpan(text: 'Download the '),
          const TextSpan(
            text: 'Datasheet',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextSpan(text: ' from '),
          TextSpan(
            text: 'Farnell',
            recognizer: storeTapRecognizer,
            style: linkStyle,
          ),
          const TextSpan(text: ' store for more technical specifications at \n\n'),
          TextSpan(
            text: datasheetUrl,
            recognizer: datasheetTapRecognizer,
            style: linkStyle,
          ),
          const TextSpan(text: '.'),
        ],
      ),
    );
  } else {
    return RichText(
      text: TextSpan(
        text: '${product.displayName}\n\n',
        style: const TextStyle(color: Colors.black87),
      ),
    );
  }
}

// Widget _buildLogoAttribution() {
//   return Padding(
//     padding: const EdgeInsets.only(top: 16.0),
//     child: Row(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.only(top: 0.0),
//           child: Image.asset(
//             'assets/flutter.png',
//             width: 32.0,
//           ),
//         ),
//         const Expanded(
//           child: Padding(
//             padding: EdgeInsets.only(left: 12.0),
//             child: Text(
//               'Popup window is like a dialog box that gains complete focus when it appears on screen.',
//               style: TextStyle(fontSize: 12.0),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
