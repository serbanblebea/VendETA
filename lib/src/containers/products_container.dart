part of containers;

class ProductsContainer extends StatelessWidget {
  const ProductsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Product>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Product>>(
      converter: (Store<AppState> store) => store.state.products.asList(),
      builder: builder,
    );
  }
}
