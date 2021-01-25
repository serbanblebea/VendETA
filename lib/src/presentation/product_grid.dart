import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:redux/redux.dart';
import 'package:vendeta/src/actions/index.dart';
import 'package:vendeta/src/models/index.dart';
import 'package:vendeta/src/presentation/popup_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({
    Key key,
  }) : super(key: key);

  @override
  _ProductGridState createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  TapGestureRecognizer storeTapRecognizer;
  TapGestureRecognizer datasheetTapRecognizer;

  Future<void> openUrl(String url) async {
    Navigator.pop(context);

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    storeTapRecognizer = TapGestureRecognizer()..onTap = () => openUrl(storeUrl);
    datasheetTapRecognizer = TapGestureRecognizer()..onTap = () => openUrl(datasheetUrl);
  }

  @override
  void dispose() {
    storeTapRecognizer.dispose();
    datasheetTapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    if (store.state.products.isEmpty) {
      return const Center(
        child: Text(
          'NO PRODUCTS FOUND',
          style: TextStyle(
            fontSize: 21,
            fontStyle: FontStyle.italic,
          ),
        ),
      );
    } else {
      return Column(
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0).copyWith(bottom: 56.0),
              itemCount: (store.state.perPage > store.state.products.length)
                  ? store.state.products.length
                  : store.state.perPage,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 11 / 16,
                crossAxisCount: 3,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                final Product product = store.state.products[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  IconShadowWidget(
                                    Icon(
                                      Icons.circle,
                                      color: Colors.indigo.shade400,
                                    ),
                                    shadowColor: Colors.black54,
                                    showShadow: false,
                                  ),
                                  Text(
                                    '${index + 1}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Container(
                                margin: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  product.displayName.substring(0, product.displayName.indexOf(' ')),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Stack(
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                showDialog<dynamic>(
                                  context: context,
                                  builder: (BuildContext context) => buildAboutDialog(
                                    context,
                                    storeTapRecognizer,
                                    datasheetTapRecognizer,
                                    product,
                                  ),
                                );
                              },
                              child: GridTile(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.network(
                                    'https://uk.farnell.com/productimages/standard/en_GB${product.productImage.baseName}',
                                    errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
                                      return const Text('No image');
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            decoration: const BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)),
            ),
            child: ClipRect(
              child: FlatButton(
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Load More',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    store.dispatch(ChangePerPage(store.state.perPage));

                    if (store.state.perPage == store.state.products.length) {
                      store.dispatch(ChangeOffset(store.state.offset));
                      store.dispatch(const GetProducts.start());
                    }
                  });
                },
              ),
            ),
          )
        ],
      );
    }
  }
}
