import 'package:book_shop_bal/Learn/manage_state/data/repository/r_user_impl.dart';
import 'package:book_shop_bal/Learn/manage_state/domain/repository/r_user.dart';
import 'package:book_shop_bal/Learn/manage_state/presentation/bloc/user_bloc.dart';
import 'package:book_shop_bal/Learn/manage_state/presentation/view/view_user.dart';
import 'package:book_shop_bal/src/features/main_home/presentation/main_home_screen.dart';

import 'package:book_shop_bal/src/injection/container_auto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // setupLocator();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // include widget
    // ValueListenableBuilder(
    //   valueListenable: widgetAsync,
    //   builder: (context, value, child) {
    //   return
    //   },
    // );

    return BlocProvider(
      create: (context) => UserBloc(UserRepositoryImpl())..add(LoadUserEvent()),
      child: ScreenUtilInit(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          ),
          home: const ViewUser(),
        ),
      ),
    );
  }
}

/// [widgetAsync] state alert handle value notifier  for CoreStateAlert provider
final ValueNotifier<bool> widgetAsync = ValueNotifier(false);

void updateAsync(bool value) {
  widgetAsync.value = value;
}
