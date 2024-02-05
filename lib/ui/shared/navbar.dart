


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/providers/sidemenu_provider.dart';
import 'package:vertical_landing_page/router/router.dart';
import 'package:vertical_landing_page/ui/shared/widgets/menu_item.dart';
import 'package:vertical_landing_page/ui/shared/widgets/menu_item_fontawesome.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    final sideMenuProvider = Provider.of<SideMenuProvider>(context);

    return Container(
      alignment: Alignment.bottomCenter,
      width: double.infinity,    
      height: size.width < 900 ? 80.0 : 100.0,
      //decoration: buildBoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //const SizedBox(height: 30.0,),
              
              if ( size.width <= 900 )
                IconButton(
                  icon: const Icon( Icons.menu_outlined ), 
                  onPressed: () => SideMenuProvider.openMenu(),
                  color: Colors.blueGrey,
                ),
              
              const SizedBox( width: 5 ),


              if ( size.width > 900 )
              ...[
                MenuItem(
                  text: 'home',
                  icon: Icons.home,
                  onPressed: () => pageProvider.goTo(0),
                  isActive: sideMenuProvider.currentPage == Flurorouter.homeRoute,
                ),

                const SizedBox( width: 5 ),

                MenuItem(
                  text: 'UI UX',
                  icon: Icons.view_quilt,
                  onPressed: () => pageProvider.goTo(1),
                  isActive: sideMenuProvider.currentPage == Flurorouter.uiuxRoute,
                ),

                const SizedBox( width: 5 ),

                MenuItemFontawesome(
                  text: 'iOS Android',
                  icon: FontAwesomeIcons.appStoreIos,
                  icon2: FontAwesomeIcons.android,
                  onPressed: () => pageProvider.goTo(2),
                  isActive: sideMenuProvider.currentPage == Flurorouter.osRoute,
                ),

                const SizedBox( width: 5 ),

                MenuItem( 
                    text: 'mobile web', 
                    icon: Icons.devices,
                    icon2: Icons.desktop_windows_outlined, 
                    onPressed: () => pageProvider.goTo(3),
                    isActive: sideMenuProvider.currentPage == Flurorouter.mwRoute,
                  ),

                const SizedBox( width: 5 ),

                MenuItem( 
                    text: 'contacts', 
                    icon: Icons.list_alt_outlined, 
                    onPressed: () => pageProvider.goTo(4),
                    isActive: sideMenuProvider.currentPage == Flurorouter.contactRoute,
                  ),
              ],

            ],
          ),
          const SizedBox(height: 20.0,),
          /* const Divider(
            height: 0,
            color: Colors.white,
            indent: 50.0,
            endIndent: 50.0,
          ), */
        ],
      ),
    );
  }


  BoxDecoration buildBoxDecoration() => const BoxDecoration(
    //color: Colors.white,
    //color: Color( 0xff1A2834 ),
    /* boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 5
      )
    ] */
  );
}