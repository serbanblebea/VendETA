import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vendeta/src/containers/index.dart';
import 'package:vendeta/src/models/index.dart';
import 'package:vendeta/src/presentation/product_grid.dart';
import 'search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);
  static const String id = 'home_screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return IsLoadingContainer(
      builder: (BuildContext context, bool isLoading) {
        return ProductsContainer(
          builder: (BuildContext context, List<Product> products) {
            return Scaffold(
              appBar: const SearchBar(),
              body: Builder(
                builder: (BuildContext context) {
                  print(StoreProvider.of<AppState>(context).state.term);
                  print(StoreProvider.of<AppState>(context).state.offset);
                  print(StoreProvider.of<AppState>(context).state.perPage);

                  if (isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo[50],
                    ),
                    child: const ProductGrid(),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
