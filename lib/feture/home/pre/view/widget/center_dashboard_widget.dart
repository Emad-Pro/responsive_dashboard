import 'package:flutter/material.dart';
import 'package:responsive_dashboard/feture/home/pre/view/widget/center_dashboard_header_widget.dart';
import 'package:responsive_dashboard/feture/home/pre/view/widget/center_dashboard_line_chart_card.dart';
import 'package:responsive_dashboard/feture/home/pre/view/widget/summary_menu_widget.dart';

import '../../../../../core/const/util/responsive.dart';
import 'center_dashboard_activity_details_card.dart';
import 'center_dashboard_bar_graph_card.dart';

class CenterDashboardWidget extends StatelessWidget {
  const CenterDashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CustomScrollView(
        slivers: [
          const CenterDashboardHeaderWidget(),
          const CenterDashboardActivityDetailsCard(),
          const CenterDashboardLineChartCard(),
          const CenterDashboardBarGraphCard(),
          if (Responsive.isTablet(context))
            const SliverToBoxAdapter(child: SummaryMenuWidget()),
        ],
      ),
    );
  }
}
