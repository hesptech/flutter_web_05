import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/ui/shared/custom_app_menu.dart';
import 'package:vertical_landing_page/ui/shared/navbar.dart';
import 'package:vertical_landing_page/ui/views/home_view.dart';
import 'package:vertical_landing_page/ui/views/ui_ux_view.dart';
import 'package:vertical_landing_page/ui/views/os_view.dart';
import 'package:vertical_landing_page/ui/views/mw_view.dart';
import 'package:vertical_landing_page/ui/views/contact_view.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        //decoration: buildBoxDecoration(),
        child: Stack(
          children: [

              _HomeBody(),

            if ( size.width <= 900 )
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(height: 100,),
                CustomAppMenu(),
              ],
            ),
            /* Positioned(
              right: 20,
              top: 20,
              child: CustomAppMenu()
            ), */

            if ( size.width > 900 )
              Navbar()

          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.pink,
        Colors.purpleAccent
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [ 0.5, 0.5 ]
    )
  );
}


class _HomeBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return PageView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        UiUxView(),
        OsView(),
        MwView(),
        ContactView(),
      ],
    );
  }
}