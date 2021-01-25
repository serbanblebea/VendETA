import 'package:redux/redux.dart';
import 'package:vendeta/src/actions/index.dart';
import 'package:vendeta/src/models/index.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetProductsStart>(_getProductsStart),
  TypedReducer<AppState, GetProductsSuccessful>(_getProductsSuccessful),
  TypedReducer<AppState, GetProductsError>(_getProductsError),
  TypedReducer<AppState, SearchTerm>(_searchTerm),
  TypedReducer<AppState, ChangeOffset>(_changeOffset),
  TypedReducer<AppState, ChangePerPage>(_changePerPage),
]);

AppState _getProductsStart(AppState state, GetProductsStart action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = true);
}

AppState _getProductsSuccessful(AppState state, GetProductsSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..products.addAll(action.products)
      ..isLoading = false
      ..perPage = b.perPage;
  });
}

AppState _getProductsError(AppState state, GetProductsError action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = false);
}

AppState _searchTerm(AppState state, SearchTerm action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..products.clear()
      ..term = action.term
      ..perPage = 5
      ..offset = 0;
  });
}

AppState _changeOffset(AppState state, ChangeOffset action) {
  return state.rebuild((AppStateBuilder b) => b.offset = b.offset + 25);
}

AppState _changePerPage(AppState state, ChangePerPage action) {
  return state.rebuild((AppStateBuilder b) => b.perPage = b.perPage + 5);
}
