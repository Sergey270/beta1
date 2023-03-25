import 'package:flutter/material.dart';
import 'main_screen_widget.dart';
import 'timer.dart';

class Mafia extends StatefulWidget {
  const Mafia({Key? key}) : super(key: key);

  @override
  State<Mafia> createState() => _MafiaState();
}

class _MafiaState extends State<Mafia> {
  List<String> textNumber = [];
  List<String> nominatePlayers = [''];
  late bool votingContainer;

  late bool hideRoles;
  late bool space;
  late bool deletePlayer;
  late Color cleanColor;
  int fouls = 0;
  int voting = 0;

  late bool space2;
  late bool deletePlayer2;
  late Color cleanColor2;
  int fouls2 = 0;
  int voting2 = 0;

  late bool space3;
  late bool deletePlayer3;
  late Color cleanColor3;
  int fouls3 = 0;
  int voting3 = 0;

  late bool space4;
  late bool deletePlayer4;
  late Color cleanColor4;
  int fouls4 = 0;
  int voting4 = 0;

  late bool space5;
  late bool deletePlayer5;
  late Color cleanColor5;
  int fouls5 = 0;
  int voting5 = 0;

  late bool space6;
  late bool deletePlayer6;
  late Color cleanColor6;
  int fouls6 = 0;
  int voting6 = 0;

  late bool space7;
  late bool deletePlayer7;
  late Color cleanColor7;
  int fouls7 = 0;
  int voting7 = 0;

  late bool space8;
  late bool deletePlayer8;
  late Color cleanColor8;
  int fouls8 = 0;
  int voting8 = 0;

  late bool space9;
  late bool deletePlayer9;
  late Color cleanColor9;
  int fouls9 = 0;
  int voting9 = 0;

  late bool space10;
  late bool deletePlayer10;
  late Color cleanColor10;
  int fouls10 = 0;
  int voting10 = 0;

  @override
  void initState() {
    cleanColor = Colors.grey;
    textNumber = ['👮‍♀', '🔴', '🔴', '🔴', '🔴', '🔴', '🔴', '⚫️', '⚫️', '💍']
      ..shuffle();
    votingContainer = false;

    hideRoles = true;
    space = true;
    deletePlayer = true;

    space2 = true;
    deletePlayer2 = true;

    space3 = true;
    deletePlayer3 = true;

    space4 = true;
    deletePlayer4 = true;

    space5 = true;
    deletePlayer5 = true;

    space6 = true;
    deletePlayer6 = true;

    space7 = true;
    deletePlayer7 = true;

    space8 = true;
    deletePlayer8 = true;

    space9 = true;
    deletePlayer9 = true;

    space10 = true;
    deletePlayer10 = true;
    super.initState();
  }

  void isVotingContainer() {
    (space &&
            space2 &&
            space3 &&
            space4 &&
            space5 &&
            space6 &&
            space7 &&
            space8 &&
            space9 &&
            space10)
        ? votingContainer = false
        : votingContainer = true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF3F6F9),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: hideRoles
              ? IconButton(
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Color.fromRGBO(15, 119, 240, 1),
                  ),
                  onPressed: () {
                    setState(() {
                      hideRoles = !hideRoles;
                    });
                  },
                )
              : IconButton(
                  icon: const Icon(
                    Icons.remove_red_eye_rounded,
                    color: Color.fromRGBO(15, 119, 240, 1),
                  ),
                  onPressed: () {
                    setState(() {
                      hideRoles = !hideRoles;
                    });
                  },
                ),
          title: const Text(
            'Ведение игры',
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.restart_alt,
                color: Color.fromRGBO(15, 119, 240, 1),
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
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 0, left: 13, right: 13),
                  child: Column(
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color:
                              deletePlayer ? Colors.white : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 48,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  hideRoles
                                      ? Container(
                                          alignment: Alignment.center,
                                          width: 26,
                                          child: Text(
                                            textNumber[0],
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              color: deletePlayer
                                                  ? cleanColor = Colors.black
                                                  : cleanColor =
                                                      const Color(0x66181818),
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        )
                                      : const SizedBox(
                                          width: 26,
                                        ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 20,
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        color: deletePlayer
                                            ? cleanColor = Colors.black
                                            : cleanColor = const Color(
                                                0x80999999,
                                              ),
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 36,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        minimumSize: const Size(
                                          10.0,
                                          10.0,
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          space = true;
                                          deletePlayer = !deletePlayer;
                                        });
                                      },
                                      child: Text(
                                        '╳',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          color: deletePlayer
                                              ? cleanColor = Colors.red
                                              : cleanColor =
                                                  const Color(0x80999999),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            space
                                ? const Expanded(
                                    child: SizedBox(),
                                  )
                                : const SizedBox(),
                            Expanded(
                              child: Container(
                                child: deletePlayer
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 0,
                                            child: VerticalDivider(
                                              thickness: 1,
                                              indent: 11,
                                              endIndent: 11,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 28,
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                minimumSize: const Size(
                                                  1.0,
                                                  1.0,
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  if (fouls > 0) {
                                                    fouls--;
                                                  }
                                                });
                                              },
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Color.fromRGBO(
                                                      15, 119, 240, 1),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 24,
                                            child: Text(
                                              '$fouls',
                                              style: const TextStyle(
                                                fontSize: 17.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 28,
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                minimumSize: const Size(
                                                  1.0,
                                                  1.0,
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  if (fouls < 4) {
                                                    fouls++;
                                                  }
                                                });
                                              },
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Color.fromRGBO(
                                                      15, 119, 240, 1),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          space
                                              ? const SizedBox(
                                                  width: 0,
                                                  child: VerticalDivider(
                                                    thickness: 1,
                                                    indent: 11,
                                                    endIndent: 11,
                                                    color: Colors.grey,
                                                  ),
                                                )
                                              : const SizedBox(),
                                        ],
                                      )
                                    : const SizedBox(),
                              ),
                            ),
                            deletePlayer
                                ? Container(
                                    width: 44,
                                    color: space
                                        ? Colors.transparent
                                        : const Color.fromRGBO(15, 119, 240, 1),
                                    height: double.infinity,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        minimumSize: const Size(
                                          1.0,
                                          1.0,
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          space = !space;
                                          space
                                              ? nominatePlayers.remove(' 1,')
                                              : nominatePlayers.add(' 1,');
                                          isVotingContainer();
                                        });
                                      },
                                      child: const Text(
                                        '👍',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          color:
                                              Color.fromRGBO(15, 119, 240, 1),
                                        ),
                                      ),
                                    ),
                                  )
                                : const SizedBox(
                                    width: 44,
                                  ),
                            space
                                ? const SizedBox()
                                : Expanded(
                                    child: Container(
                                      color: space
                                          ? Colors.transparent
                                          : const Color.fromRGBO(
                                              15, 119, 240, 1),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 1,
                                            child: VerticalDivider(
                                              thickness: 1,
                                              indent: 11,
                                              endIndent: 11,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 28,
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                minimumSize: const Size(
                                                  1.0,
                                                  1.0,
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  if (voting > 0) {
                                                    voting--;
                                                  }
                                                });
                                              },
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 24,
                                            child: Text(
                                              '$voting',
                                              style: const TextStyle(
                                                fontSize: 17.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 28,
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                minimumSize: const Size(
                                                  1.0,
                                                  1.0,
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  if (voting < 9) {
                                                    voting++;
                                                  }
                                                });
                                              },
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                votingContainer
                    ? Container(
                        margin: const EdgeInsets.only(top: 2),
                        padding: const EdgeInsets.only(
                            top: 11, bottom: 11, left: 17, right: 17),
                        height: 62,
                        width: double.infinity,
                        color: const Color.fromRGBO(15, 119, 240, 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'На голосовании:',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                    children: nominatePlayers
                                        .map(
                                          (element) => Column(
                                            children: [
                                              Text(
                                                element,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                        .toList()),
                              ],
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.restart_alt,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  nominatePlayers.clear();
                                  votingContainer = false;
                                  space = true;
                                  voting = 0;
                                  space2 = true;
                                  voting2 = 0;
                                  space3 = true;
                                  voting3 = 0;
                                  space4 = true;
                                  voting4 = 0;
                                  space5 = true;
                                  voting5 = 0;
                                  space6 = true;
                                  voting6 = 0;
                                  space7 = true;
                                  voting7 = 0;
                                  space8 = true;
                                  voting8 = 0;
                                  space9 = true;
                                  voting9 = 0;
                                  space10 = true;
                                  voting10 = 0;
                                });
                              },
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(
                        height: 66,
                      ),
                const TimerPlayer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
