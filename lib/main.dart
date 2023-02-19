import 'package:flutter/material.dart';
import 'package:mafia_beta3/get_numbers.dart';

import 'main_screen_widget.dart';
import 'mafia.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const MainScreenWidget(),
      //   '/mafia': (context) => const Mafia(),
      //   '/get': (context) => const GetNumbers(),
      // },
      home: MainScreenWidget(),
    );
  }
}
