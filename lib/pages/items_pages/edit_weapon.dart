import 'package:flutter/material.dart';
import 'package:flutter_dnd_project/resources/styling.dart';

class EditWeapon extends StatefulWidget {
  const EditWeapon({super.key});

  @override
  State<EditWeapon> createState() => _EditWeaponState();
}

class _EditWeaponState extends State<EditWeapon> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        createNameField(),
        SizedBox(height: 15),
        createDescriptionField(),
      ],
    );
  }

  Widget createNameField(){
    return const SizedBox(
      width: 260,
      child: 
        TextField(
        style: TextStyle(color: Styling.textBright),
        decoration: 
          InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Name',
          hintStyle: TextStyle(color: Styling.textDark),
        ),
      )
    );
  }

  Widget createDescriptionField(){
    return const SizedBox(
      width: 260,
      height: 150,
      child: 
        TextField(
        style: TextStyle(color: Styling.textBright),
        expands: true,
        minLines: null,
        maxLines: null,
        decoration: 
          InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Description',
          hintStyle: TextStyle(color: Styling.textDark),
        ),
      )
    );
  }
}