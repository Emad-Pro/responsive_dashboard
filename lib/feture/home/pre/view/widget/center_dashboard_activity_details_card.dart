import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/feture/home/pre/view_model/cubit/home_cubit.dart';
import '../../../../../core/const/util/responsive.dart';
import 'build_activity_details_item_card.dart';

class CenterDashboardActivityDetailsCard extends StatelessWidget {
  const CenterDashboardActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = context.watch<HomeCubit>().healthData;
    final isMobile = Responsive.isMobile(context);
    return SliverPadding(
      padding: const EdgeInsets.only(top: 18.0),
      sliver: SliverGrid.builder(
        itemCount: healthDetails.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isMobile ? 2 : 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 12),
        itemBuilder: (context, index) =>
            BuildActivityDetailsItemCard(healthDetails: healthDetails[index]),
      ),
    );
  }
}
