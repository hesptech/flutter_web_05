import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/providers/sidemenu_provider.dart';
import 'package:vertical_landing_page/router/router.dart';

import 'config/theme.dart';
 
void main() => runApp(AppState());

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => PageProvider() ),
        ChangeNotifierProvider(create: ( _ ) => SideMenuProvider(), lazy: false, )
      ],
      child: MyApp(),
    );
  }
}

 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  @override
  void initState() { 
    super.initState();
    Flurorouter.configureRoutes();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Page',
      theme: theme,
      initialRoute: '/home',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}