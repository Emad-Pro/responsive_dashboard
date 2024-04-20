import 'package:flutter/material.dart';

import 'package:responsive_dashboard/core/const/util/responsive.dart';
import 'package:responsive_dashboard/feture/home/pre/view/widget/center_dashboard_widget.dart';
import 'package:responsive_dashboard/feture/home/pre/view/widget/side_menue_widget.dart';
import 'package:responsive_dashboard/feture/home/pre/view/widget/summary_menu_widget.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Drawer(child: SummaryMenuWidget()),
            )
          : null,
      drawer: !isDesktop ? const Drawer(child: SideMenueWidget()) : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop) const Expanded(flex: 2, child: SideMenueWidget()),
          const Expanded(flex: 7, child: CenterDashboardWidget()),
          if (isDesktop) const Expanded(flex: 3, child: SummaryMenuWidget())
        ],
      )),
    );
  }
}
