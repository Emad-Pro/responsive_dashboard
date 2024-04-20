import 'package:flutter/material.dart';
import 'package:responsive_dashboard/feture/home/pre/view/widget/summary_menu_pie_chart.dart';

import 'summary_menu_details_widget.dart';
import 'summary_menu_scheduled.dart';
import 'summary_menu_text_widget.dart';

class SummaryMenuWidget extends StatelessWidget {
  const SummaryMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SummaryMenuPieChart(),
        SummaryTextWidget(),
        SummaryMenuDetailsWidget(),
        SummaryMenuScheduled()
      ],
    );
  }
}
