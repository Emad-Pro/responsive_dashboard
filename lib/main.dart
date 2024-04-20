import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/core/const/constant.dart';
import 'package:responsive_dashboard/feture/home/pre/view/main_screens.dart';
import 'package:responsive_dashboard/feture/home/pre/view_model/cubit/home_cubit.dart';

void main() {
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Builder(builder: (context) {
        context.watch<HomeCubit>().state;
        return MaterialApp(
          title: 'Dashboard Ui',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: backgroundColor,
            brightness: Brightness.dark,
            useMaterial3: false,
          ),
          home: const MainScreens(),
        );
      }),
    );
  }
}
