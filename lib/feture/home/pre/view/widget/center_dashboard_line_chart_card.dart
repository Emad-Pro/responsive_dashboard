import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/core/const/constant.dart';
import 'package:responsive_dashboard/core/const/widget/custom_card_widget.dart';
import 'package:responsive_dashboard/feture/home/pre/view_model/cubit/home_cubit.dart';

class CenterDashboardLineChartCard extends StatelessWidget {
  const CenterDashboardLineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomTitle = context.watch<HomeCubit>().bottomTitle;
    final spots = context.watch<HomeCubit>().spots;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: CustomCardWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Steps Overview",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              AspectRatio(
                aspectRatio: 16 / 6,
                child: LineChart(
                  LineChartData(
                      lineTouchData:
                          const LineTouchData(handleBuiltInTouches: true),
                      gridData: const FlGridData(show: false),
                      titlesData: FlTitlesData(
                        rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            reservedSize: 40,
                            getTitlesWidget: (double value, TitleMeta meta) {
                              return bottomTitle[value.toInt()] != null
                                  ? SideTitleWidget(
                                      axisSide: meta.axisSide,
                                      child: Text(
                                        bottomTitle[value.toInt()].toString(),
                                        style: const TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ))
                                  : const SizedBox();
                            },
                          ),
                        ),
                        /*  leftTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: true)),*/
                      ),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          color: selectionColor,
                          barWidth: 2.5,
                          belowBarData: BarAreaData(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                selectionColor.withOpacity(0.5),
                                Colors.transparent
                              ],
                            ),
                          ),
                          dotData: const FlDotData(show: false),
                          spots: spots,
                        ),
                      ],
                      minX: 0,
                      maxX: 120,
                      maxY: 105,
                      minY: -5),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
