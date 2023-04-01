import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mafia_beta3/mafia.dart';
import 'get_numbers.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectIndex = 0;
  void onSelectTap(int index) {
    setState(() {
      if (_selectIndex == index) return;
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //  backgroundColor: const Color(0xF7F8F8FF),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: onSelectTap,
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
          selectedItemColor: const Color.fromRGBO(15, 119, 240, 1),
        ),
        body: IndexedStack(
          index: _selectIndex,
          children: const [
            GetNumbers(),
            Mafia(),
          ],
        ),
      ),
    );
  }
}
