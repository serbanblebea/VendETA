import 'package:vendeta/src/actions/index.dart';
import 'package:vendeta/src/data/farnell_api.dart';
import 'package:vendeta/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({@required FarnellApi farnellApi})
      : assert(farnellApi != null),
        _farnellApi = farnellApi;

  final FarnellApi _farnellApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetProductsStart>(_getProductsStart),
    ]);
  }

  Stream<dynamic> _getProductsStart(Stream<GetProductsStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetProductsStart action) {
          return _farnellApi.getProducts(
            store.state.offset,
            store.state.term,
          );
        })
        .map((List<Product> products) => GetProducts.successful(products))
        .onErrorReturnWith((dynamic error) => GetProducts.error(error));
  }
}
