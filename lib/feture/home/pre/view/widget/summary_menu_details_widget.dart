import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/const/widget/custom_card_widget.dart';

class SummaryMenuDetailsWidget extends StatelessWidget {
  const SummaryMenuDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CustomCardWidget(
        color: const Color(0xff2f353e),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildDetails("Cal", "305"),
            buildDetails("Steps", "10983"),
            buildDetails("Distance", "7km"),
            buildDetails("Sleep", "7h")
          ],
        ),
      ),
    );
  }

  Widget buildDetails(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(fontSize: 11, color: Colors.grey),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
