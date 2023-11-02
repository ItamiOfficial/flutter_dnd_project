import 'package:flutter/material.dart';
import 'package:flutter_dnd_project/pages/items_pages/edit_weapon.dart';
import 'package:flutter_dnd_project/resources/styling.dart';

const List<String> _itemTypes = <String>['Armor','Weapon'];

class ItemCreationWidget extends StatefulWidget {
  const ItemCreationWidget({super.key});

  @override
  State<ItemCreationWidget> createState() => _ItemCreationWidgetState();
}

class _ItemCreationWidgetState extends State<ItemCreationWidget> {
  
    String _currentItemType = "Weapon";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styling.backgroundColor,
      body: Column(
        children: <Widget>[
          const Center(child: Text("Item Creator",textScaleFactor: 5, style: TextStyle(color: Styling.textAlt))),

          // Item Type Selector
          Container(
            color: Colors.transparent,
            padding: const EdgeInsets.all(15.0),
            width: 300,
            child:
              DropdownButton<String>(
              // Styling
              icon: const Icon(Icons.menu),
              style: const TextStyle(color: Color.fromARGB(191, 242, 200, 121), fontSize: 18, fontStyle: FontStyle.italic),
              dropdownColor: Styling.backgroundColor,
              padding: const EdgeInsets.all(10),
              borderRadius:const  BorderRadius.all(Radius.circular(10.0)),
              isExpanded: true,
              
              // Selection-Logic
              value: _currentItemType,
              items: const [
                DropdownMenuItem(value: "Weapon", child: Text("Weapon"),),
                DropdownMenuItem(value: "Armor", child: Text("Armor"),),
                DropdownMenuItem(value: "Potion", child: Text("Potion"),),
              ],

              // Is Important, use this to load different sub widgets which are showing the different types of widgets
              onChanged: (newValue) => {
                if(newValue is String){
                  setState(() {
                    _currentItemType = newValue;
                  }),
                }
              },
            ),
          ),
          createDedicatedItemEditor()
        ],
      )
    );
  }

  Widget createDedicatedItemEditor(){
    switch (_currentItemType){
      case "Weapon": return const EditWeapon();
      default: return const Placeholder();
    }
  }
}