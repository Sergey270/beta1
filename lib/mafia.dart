import 'package:flutter/material.dart';
import 'package:mafia_beta3/player.dart';

import 'main_screen_widget.dart';

class Mafia extends StatefulWidget {
  const Mafia({Key? key}) : super(key: key);

  @override
  State<Mafia> createState() => _MafiaState();
}

class _MafiaState extends State<Mafia> {


  List<String> textNumber = ['👮‍♀'];
  bool hideRoles = true;
  bool space = true;
  bool deletePlayer = true;
  late Color cleanColor;
  int fouls = 0;
  int voting = 0;


  void color() {

    deletePlayer
        ? cleanColor = Colors.grey
        : cleanColor = const Color(0x448AFF73);
  }

  @override
  void initState() {
    cleanColor = Colors.grey;
    textNumber = ['👮‍♀'];
    hideRoles = true;
    space = true;
    deletePlayer = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF3F6F9),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: hideRoles
                ? IconButton(
                    icon: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        hideRoles = !hideRoles;
                      });
                    },
                  )
                : IconButton(
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        hideRoles = !hideRoles;
                      });
                    },
                  ),
            title: const Text(
              'Мафия ведущий',
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            elevation: 0,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.restart_alt,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreenWidget()),
                  );
                },
              ),
            ],
          ),
          body: SafeArea(
            child: Center(
              child: ListView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 13, bottom: 0, left: 13, right: 13),
                    child: Column(
                      children: const [
                        Player(
                        ),
                        Player(
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
