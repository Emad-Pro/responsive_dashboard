import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../core/const/widget/custom_card_widget.dart';
import '../../../data/model/graph_model.dart';
import '../../view_model/cubit/home_cubit.dart';

class BuildBarGraphItem extends StatelessWidget {
  const BuildBarGraphItem(
      {super.key, required this.barGraphData, required this.index});

  final HomeCubit barGraphData;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(8.0),
          child: Text(
            barGraphData.data[index].label,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: BarChart(
            BarChartData(
                barGroups: _chartGroups(
                  color: barGraphData.data[index].color,
                  points: barGraphData.data[index].graph,
                ),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            barGraphData.label[value.toInt()],
                            style: const TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        );
                      },
                    ),
                  ),
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                )),
          ),
        )
      ],
    ));
  }

  List<BarChartGroupData> _chartGroups(
      {required List<GraphModel> points, required Color color}) {
    return points
        .map(
          (point) => BarChartGroupData(
            x: point.x.toInt(),
            barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3.0),
                  topRight: Radius.circular(3.0),
                ),
              )
            ],
          ),
        )
        .toList();
  }
}
