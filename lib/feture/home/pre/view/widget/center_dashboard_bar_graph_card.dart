import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/core/const/util/responsive.dart';

import 'package:responsive_dashboard/feture/home/pre/view_model/cubit/home_cubit.dart';

import 'build_bar_graph_item_card.dart';

class CenterDashboardBarGraphCard extends StatelessWidget {
  const CenterDashboardBarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = context.watch<HomeCubit>();
    final bool isModel = Responsive.isMobile(context);
    return SliverPadding(
      padding: const EdgeInsets.only(top: 8.0),
      sliver: SliverGrid.builder(
        itemCount: barGraphData.data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isModel ? 1 : 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12.0,
          childAspectRatio: 5 / 4,
        ),
        itemBuilder: (context, index) => BuildBarGraphItem(
          barGraphData: barGraphData,
          index: index,
        ),
      ),
    );
  }
}
