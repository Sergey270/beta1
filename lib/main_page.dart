
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'get_numbers.dart';
import 'mafia.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
         activeColor: const Color.fromRGBO(15, 119, 240, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Раздача номеров',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Ведение игры',
          ),
        ],

      ),
      tabBuilder: (context, index) {
        switch (index){
          case 0:
            return CupertinoTabView(
              builder: (context) => const GetNumbers(),
            );

          case 1:
            return CupertinoTabView(
              builder: (context) => const Mafia(),
            );
          case 2:
          default:
          return   CupertinoTabView(
            builder: (context) => const Mafia(),
          );

        }
      },

    );
  }
}
