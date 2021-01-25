part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    // initial values
    return _$AppState((AppStateBuilder b) {
      b
        ..isLoading = false
        ..perPage = 5
        ..offset = 0
        ..term = 'module';
    });
  }

  AppState._();

  BuiltList<Product> get products;

  BuiltList<ProductDatasheets> get productDatasheets;

  int get perPage;

  int get offset;

  String get term;

  bool get isLoading;
}
