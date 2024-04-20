import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/feture/home/pre/view/widget/side_menue_widget.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          const Expanded(flex: 2, child: SideMenueWidget()),
          Expanded(
              flex: 7,
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
              ))
        ],
      )),
    );
  }
}
