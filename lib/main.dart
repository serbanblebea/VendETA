import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'package:vendeta/src/actions/index.dart';
import 'package:vendeta/src/data/farnell_api.dart';
import 'package:vendeta/src/epics/app_epics.dart';
import 'package:vendeta/src/models/index.dart';
import 'package:vendeta/src/presentation/home_page.dart';
import 'package:vendeta/src/presentation/login_screen.dart';
import 'package:vendeta/src/presentation/registration_screen.dart';
import 'package:vendeta/src/presentation/welcome_screen.dart';
import 'package:vendeta/src/reducer/reducer.dart';

void main() {
  final Client client = Client();
  final FarnellApi api = FarnellApi(client: client, productsLimit: 25, apiKey: 'vp4cdqr3huqgh8mw8nzmw9vh');
  final AppEpics appEpics = AppEpics(farnellApi: api);
  final AppState initialState = AppState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  );

  store.dispatch(const GetProducts.start());

  runApp(VendetaApp(store: store));
}

class VendetaApp extends StatelessWidget {
  const VendetaApp({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        initialRoute: WelcomeScreen.id,
        routes: <String, WidgetBuilder>{
          WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
          LoginScreen.id: (BuildContext context) => LoginScreen(),
          RegistrationScreen.id: (BuildContext context) => RegistrationScreen(),
          HomePage.id: (BuildContext context) => const HomePage(),
        },
      ),
    );
  }
}
