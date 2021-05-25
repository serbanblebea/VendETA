import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:vendeta/src/actions/index.dart';
import 'package:vendeta/src/models/index.dart';

FirebaseUser loggedInUser;

class SearchBar extends StatefulWidget implements PreferredSizeWidget {
  const SearchBar({Key key})
      // ignore: avoid_field_initializers_in_const_classes
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _filter = TextEditingController();
  List<String> searchedItems = <String>[];
  bool isSearch = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void _searchPressed() {
    setState(() {
      isSearch = !isSearch;
      if (!isSearch) {
        _filter.clear();
      }
    });
  }

  // ignore: avoid_void_async
  void getCurrentUser() async {
    try {
      final FirebaseUser user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  // Widget _buildList() {
  //   return ListView.builder(
  //     itemCount: searchedItems == null ? 0 : searchedItems.length,
  //     itemBuilder: (BuildContext context, int index) {
  //       return ListTile(
  //         title: Text(searchedItems[index]),
  //         onTap: () => print(searchedItems[index]),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      title: isSearch
          ? TextField(
              autofocus: true,
              style: const TextStyle(color: Colors.white),
              controller: _filter,
              textInputAction: TextInputAction.done,
              onSubmitted: (String enteredValue) {
                setState(() {
                  if (!searchedItems.contains(enteredValue)) {
                    searchedItems.add(enteredValue);
                  }
                  final Store<AppState> store = StoreProvider.of<AppState>(context);
                  store.dispatch(SearchTerm(enteredValue));
                  store.dispatch(const GetProducts.start());
                });
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(),
                const Text('VendETA '),
                IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed: () {
                    _auth.signOut();
                    Navigator.pop(context);
                  },
                )
              ],
            ),
      backgroundColor: Colors.indigo[900],
      leading: IconButton(
        icon: Icon(
          isSearch ? Icons.arrow_back_rounded : Icons.search,
        ),
        onPressed: _searchPressed,
      ),
    );
  }
}
