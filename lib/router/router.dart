import 'package:fluro/fluro.dart';
import 'package:vertical_landing_page/router/router_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static String homeRoute = '/home';
  static String uiuxRoute = '/UIUX';
  static String osRoute = '/iOSAndroid';
  static String mwRoute = '/movileweb';
  static String contactRoute = '/contact';

  static void configureRoutes() {
    
    // Rutas
    router.define('/:page', handler: homeHandler );


    // 404
    router.notFoundHandler = homeHandler;

  }
}
