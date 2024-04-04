import 'package:flutter/material.dart';

import 'side_menu_screen.dart';

class SideMenuPage extends StatelessWidget {

  final bool isCaptain;
  SideMenuPage({Key? key, required this.isCaptain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideMenuScreen(isCaptain: isCaptain);
  }
}
