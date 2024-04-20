import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/feture/home/pre/view_model/cubit/home_cubit.dart';

import '../../../../../core/const/constant.dart';

class SummaryMenuPieChart extends StatelessWidget {
  const SummaryMenuPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = context.watch<HomeCubit>().paiChartSelectionDatas;

    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: SizedBox(
        height: 200,
        child: Stack(
          children: [
            PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 70,
                startDegreeOffset: -90,
                sections: pieChartData,
              ),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: defaultPadding),
                  Text(
                    "70%",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          height: 0.5,
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Text("of 100%")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
