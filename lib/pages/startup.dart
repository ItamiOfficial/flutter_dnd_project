import 'package:flutter/material.dart';
import 'package:flutter_dnd_project/pages/items_pages/item_create.dart';
import 'package:flutter_dnd_project/resources/styling.dart';

class Startup extends StatefulWidget {
  const Startup({super.key});

  @override
  State<Startup> createState() => _StartupState();
}

class _StartupState extends State<Startup> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styling.backgroundColor,
      body: Row(
        children: <Widget>[
          buildSideMenu(),
          const VerticalDivider(thickness: 0.5,width: 1,color: Colors.white30,),
          Expanded(child: buildMainPage()),
        ],
      ),
    );
  }

  // ==== Switch page ==== \\
  Widget buildMainPage(){
    switch (_currentIndex){
      case 0:
        return const Placeholder();
      case 1:
        return const Scaffold(backgroundColor: Colors.amber,);
      case 2:
        return const ItemCreationWidget();
    }
    return const Placeholder();
  }

  // ==== Side Menu Creation ==== \\
  Widget buildSideMenu(){
    return NavigationRail(
      // Styling
      backgroundColor: Styling.backgroundBrighter,
      minWidth: 130,
      elevation: 100,
      
      labelType: NavigationRailLabelType.all,
      unselectedLabelTextStyle: const TextStyle(color: Styling.textDark),
      selectedLabelTextStyle: const TextStyle(color: Styling.textBright, fontSize: 18),
      unselectedIconTheme: const IconThemeData(size: 30),
      selectedIconTheme: const IconThemeData(size: 30),

      // Navigation
      selectedIndex: _currentIndex,
      onDestinationSelected: changeDestination,

      // Actuall Children
      destinations: <NavigationRailDestination>[
        createDestination(const Icon(Icons.home_max_rounded, color: Styling.textBright,), "Home",),
        createDestination(const Icon(Icons.person_2_rounded, color: Styling.textBright,), "Characters"),
        createDestination(const Icon(Icons.ad_units_rounded, color: Styling.textBright,), "Items")
      ],
    );
  }

    NavigationRailDestination createDestination(Widget icon, String text ){
    return NavigationRailDestination(
      icon: icon, 
      label: Text(text)
    );
  }

  changeDestination(int index){
    setState(() {
      _currentIndex = index;
    });
  }

}

