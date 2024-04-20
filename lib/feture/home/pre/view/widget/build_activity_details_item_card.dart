import 'package:flutter/material.dart';

import '../../../../../core/const/widget/custom_card_widget.dart';
import '../../../data/model/health_model.dart';

class BuildActivityDetailsItemCard extends StatelessWidget {
  const BuildActivityDetailsItemCard({
    super.key,
    required this.healthDetails,
  });

  final HealthModel healthDetails;

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            healthDetails.icon,
            width: 30,
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 4),
            child: Text(
              healthDetails.value,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            healthDetails.title,
            style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
