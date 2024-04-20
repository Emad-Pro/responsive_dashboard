import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/core/const/widget/custom_card_widget.dart';

import 'package:responsive_dashboard/feture/home/pre/view_model/cubit/home_cubit.dart';

class SummaryMenuScheduled extends StatelessWidget {
  const SummaryMenuScheduled({super.key});

  @override
  Widget build(BuildContext context) {
    final scheduled = context.watch<HomeCubit>().scheduled;
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 7.0),
            child: Text(
              "Scheduled",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          for (var index = 0; index < scheduled.length; index++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: CustomCardWidget(
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              scheduled[index].title,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              scheduled[index].date,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Icon(Icons.more),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
