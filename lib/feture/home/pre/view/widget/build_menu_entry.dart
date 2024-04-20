import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/core/const/constant.dart';
import 'package:responsive_dashboard/feture/home/pre/view_model/cubit/home_cubit.dart';

import '../../../data/model/menu_model.dart';

class BuildMenuEntry extends StatelessWidget {
  const BuildMenuEntry(this.menuModel, this.index, {super.key});
  final MenuModel menuModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    final isSelected =
        BlocProvider.of<HomeCubit>(context).slectedIndex == index;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected ? selectionColor : Colors.transparent),
      child: ListTile(
          onTap: () {
            BlocProvider.of<HomeCubit>(context)
                .changeSelectedButtomSideMenu(index);
          },
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 7),
            child: Icon(
              menuModel.icon,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
          title: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              menuModel.title,
              style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
          )),
    );
  }
}
