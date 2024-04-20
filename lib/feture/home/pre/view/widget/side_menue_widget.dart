import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/feture/home/data/model/menuModel.dart';
import 'package:responsive_dashboard/feture/home/pre/view/widget/build_menu_entry.dart';
import 'package:responsive_dashboard/feture/home/pre/view_model/cubit/home_cubit.dart';

class SideMenueWidget extends StatelessWidget {
  const SideMenueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuModel> menuModelList = context.watch<HomeCubit>().menu;
    return Drawer(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: ListView.builder(
            itemCount: menuModelList.length,
            itemBuilder: (context, index) {
              return BuildMenuEntry(menuModelList[index], index);
            }),
      ),
    );
  }
}
