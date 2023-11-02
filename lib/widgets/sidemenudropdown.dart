import 'package:flutter/material.dart';

class DropDownSideMenu extends StatefulWidget {
  final List<DropDownSideMenuEntry> children;
  const DropDownSideMenu(
    { super.key,
      required this.children,
    });

  @override
  State<DropDownSideMenu> createState() => _DropDownSideMenuState();
}

class _DropDownSideMenuState extends State<DropDownSideMenu> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}




class DropDownSideMenuEntry extends StatefulWidget {
  const DropDownSideMenuEntry({super.key});

  @override
  State<DropDownSideMenuEntry> createState() => _DropDownSideMenuEntryState();
}

class _DropDownSideMenuEntryState extends State<DropDownSideMenuEntry> {
  @override
  Widget build(BuildContext context) {
    return const InkWell(
      onTap:() => {
      
      },
    );
  }
}