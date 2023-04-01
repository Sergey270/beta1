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
  late Color colorFouls;


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

    colorFouls = Colors.grey;

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

  void changeColorFouls(){
    if(fouls == 0) {
      colorFouls = Colors.grey;
    }
    else if(fouls >= 1 && fouls < 3) {
      colorFouls = Colors.black;
        }
    else{
      colorFouls = Colors.red;
    }
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
          leadingWidth: 64,
          leading: hideRoles
              ? IconButton(
                  icon: const Icon(
                    Icons.visibility_outlined,
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
                    Icons.visibility_off_outlined,
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
        body: Center(
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 13, bottom: 0, left: 13, right: 13),
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: deletePlayer ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(top: 2),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  width: 22,
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
                                            ? cleanColor = Colors.grey
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
                                            color: Color.fromRGBO(250, 225, 231, 1),
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
                                                  changeColorFouls();
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
                                            style:  TextStyle(
                                              fontSize: 17.0,
                                              color: colorFouls,
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
                                                  changeColorFouls();
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
                                                  color: Color.fromRGBO(250, 225, 231, 1),
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
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.thumb_up_alt_outlined,
                                      color: space
                                          ? const Color.fromRGBO(
                                              15, 119, 240, 1)
                                          : Colors.white,
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
                                        : const Color.fromRGBO(15, 119, 240, 1),
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color:
                            deletePlayer2 ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(top: 2),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                hideRoles
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 26,
                                        child: Text(
                                          textNumber[1],
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: deletePlayer2
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
                                  width: 22,
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      color: deletePlayer2
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
                                        space2 = true;
                                        deletePlayer2 = !deletePlayer2;
                                      });
                                    },
                                    child: Text(
                                      '╳',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: deletePlayer2
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
                          space2
                              ? const Expanded(
                                  child: SizedBox(),
                                )
                              : const SizedBox(),
                          Expanded(
                            child: Container(
                              child: deletePlayer2
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
                                                if (fouls2 > 0) {
                                                  fouls2--;
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
                                            '$fouls2',
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
                                                if (fouls2 < 4) {
                                                  fouls2++;
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
                                        space2
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
                          deletePlayer2
                              ? Container(
                                  width: 44,
                                  color: space2
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
                                        space2 = !space2;
                                        space2
                                            ? nominatePlayers.remove(' 2,')
                                            : nominatePlayers.add(' 2,');
                                        isVotingContainer();
                                      });
                                    },
                                    child: const Text(
                                      '👍',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color.fromRGBO(15, 119, 240, 1),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 44,
                                ),
                          space2
                              ? const SizedBox()
                              : Expanded(
                                  child: Container(
                                    color: space2
                                        ? Colors.transparent
                                        : const Color.fromRGBO(15, 119, 240, 1),
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
                                                if (voting2 > 0) {
                                                  voting2--;
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
                                            '$voting2',
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
                                                if (voting2 < 9) {
                                                  voting2++;
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color:
                            deletePlayer3 ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(top: 2),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                hideRoles
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 26,
                                        child: Text(
                                          textNumber[2],
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: deletePlayer3
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
                                  width: 22,
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                      color: deletePlayer3
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
                                        space3 = true;
                                        deletePlayer3 = !deletePlayer3;
                                      });
                                    },
                                    child: Text(
                                      '╳',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: deletePlayer3
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
                          space3
                              ? const Expanded(
                                  child: SizedBox(),
                                )
                              : const SizedBox(),
                          Expanded(
                            child: Container(
                              child: deletePlayer3
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
                                                if (fouls3 > 0) {
                                                  fouls3--;
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
                                            '$fouls3',
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
                                                if (fouls3 < 4) {
                                                  fouls3++;
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
                                        space3
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
                          deletePlayer3
                              ? Container(
                                  width: 44,
                                  color: space3
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
                                        space3 = !space3;
                                        space3
                                            ? nominatePlayers.remove(' 3,')
                                            : nominatePlayers.add(' 3,');
                                        isVotingContainer();
                                      });
                                    },
                                    child: const Text(
                                      '👍',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color.fromRGBO(15, 119, 240, 1),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 44,
                                ),
                          space3
                              ? const SizedBox()
                              : Expanded(
                                  child: Container(
                                    color: space3
                                        ? Colors.transparent
                                        : const Color.fromRGBO(15, 119, 240, 1),
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
                                                if (voting3 > 0) {
                                                  voting3--;
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
                                            '$voting3',
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
                                                if (voting3 < 9) {
                                                  voting3++;
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color:
                            deletePlayer4 ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(top: 2),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                hideRoles
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 26,
                                        child: Text(
                                          textNumber[3],
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: deletePlayer4
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
                                  width: 22,
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                      color: deletePlayer4
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
                                        space4 = true;
                                        deletePlayer4 = !deletePlayer4;
                                      });
                                    },
                                    child: Text(
                                      '╳',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: deletePlayer4
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
                          space4
                              ? const Expanded(
                                  child: SizedBox(),
                                )
                              : const SizedBox(),
                          Expanded(
                            child: Container(
                              child: deletePlayer4
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
                                                if (fouls4 > 0) {
                                                  fouls4--;
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
                                            '$fouls4',
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
                                                if (fouls4 < 4) {
                                                  fouls4++;
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
                                        space4
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
                          deletePlayer4
                              ? Container(
                                  width: 44,
                                  color: space4
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
                                        space4 = !space4;
                                        space4
                                            ? nominatePlayers.remove(' 4,')
                                            : nominatePlayers.add(' 4,');
                                        isVotingContainer();
                                      });
                                    },
                                    child: const Text(
                                      '👍',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color.fromRGBO(15, 119, 240, 1),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 44,
                                ),
                          space4
                              ? const SizedBox()
                              : Expanded(
                                  child: Container(
                                    color: space4
                                        ? Colors.transparent
                                        : const Color.fromRGBO(15, 119, 240, 1),
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
                                                if (voting4 > 0) {
                                                  voting4--;
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
                                            '$voting4',
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
                                                if (voting4 < 9) {
                                                  voting4++;
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color:
                            deletePlayer5 ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(top: 2),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                hideRoles
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 26,
                                        child: Text(
                                          textNumber[4],
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: deletePlayer5
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
                                  width: 22,
                                  child: Text(
                                    '5',
                                    style: TextStyle(
                                      color: deletePlayer5
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
                                        space5 = true;
                                        deletePlayer5 = !deletePlayer5;
                                      });
                                    },
                                    child: Text(
                                      '╳',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: deletePlayer5
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
                          space5
                              ? const Expanded(
                                  child: SizedBox(),
                                )
                              : const SizedBox(),
                          Expanded(
                            child: Container(
                              child: deletePlayer5
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
                                                if (fouls5 > 0) {
                                                  fouls5--;
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
                                            '$fouls5',
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
                                                if (fouls5 < 4) {
                                                  fouls5++;
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
                                        space5
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
                          deletePlayer5
                              ? Container(
                                  width: 44,
                                  color: space5
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
                                        space5 = !space5;
                                        space5
                                            ? nominatePlayers.remove(' 5,')
                                            : nominatePlayers.add(' 5,');
                                        isVotingContainer();
                                      });
                                    },
                                    child: const Text(
                                      '👍',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color.fromRGBO(15, 119, 240, 1),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 44,
                                ),
                          space5
                              ? const SizedBox()
                              : Expanded(
                                  child: Container(
                                    color: space5
                                        ? Colors.transparent
                                        : const Color.fromRGBO(15, 119, 240, 1),
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
                                                if (voting5 > 0) {
                                                  voting5--;
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
                                            '$voting5',
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
                                                if (voting5 < 9) {
                                                  voting5++;
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color:
                            deletePlayer6 ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(top: 2),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                hideRoles
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 26,
                                        child: Text(
                                          textNumber[5],
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: deletePlayer6
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
                                  width: 22,
                                  child: Text(
                                    '6',
                                    style: TextStyle(
                                      color: deletePlayer6
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
                                        space6 = true;
                                        deletePlayer6 = !deletePlayer6;
                                      });
                                    },
                                    child: Text(
                                      '╳',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: deletePlayer6
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
                          space6
                              ? const Expanded(
                                  child: SizedBox(),
                                )
                              : const SizedBox(),
                          Expanded(
                            child: Container(
                              child: deletePlayer6
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
                                                if (fouls6 > 0) {
                                                  fouls6--;
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
                                            '$fouls6',
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
                                                if (fouls6 < 4) {
                                                  fouls6++;
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
                                        space6
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
                          deletePlayer6
                              ? Container(
                                  width: 44,
                                  color: space6
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
                                        space6 = !space6;
                                        space6
                                            ? nominatePlayers.remove(' 6,')
                                            : nominatePlayers.add(' 6,');
                                        isVotingContainer();
                                      });
                                    },
                                    child: const Text(
                                      '👍',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color.fromRGBO(15, 119, 240, 1),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 44,
                                ),
                          space6
                              ? const SizedBox()
                              : Expanded(
                                  child: Container(
                                    color: space6
                                        ? Colors.transparent
                                        : const Color.fromRGBO(15, 119, 240, 1),
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
                                                if (voting6 > 0) {
                                                  voting6--;
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
                                            '$voting6',
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
                                                if (voting6 < 9) {
                                                  voting6++;
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color:
                            deletePlayer7 ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(top: 2),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                hideRoles
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 26,
                                        child: Text(
                                          textNumber[6],
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: deletePlayer7
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
                                  width: 22,
                                  child: Text(
                                    '7',
                                    style: TextStyle(
                                      color: deletePlayer7
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
                                        space7 = true;
                                        deletePlayer7 = !deletePlayer7;
                                      });
                                    },
                                    child: Text(
                                      '╳',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: deletePlayer7
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
                          space7
                              ? const Expanded(
                                  child: SizedBox(),
                                )
                              : const SizedBox(),
                          Expanded(
                            child: Container(
                              child: deletePlayer7
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
                                                if (fouls7 > 0) {
                                                  fouls7--;
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
                                            '$fouls7',
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
                                                if (fouls7 < 4) {
                                                  fouls7++;
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
                                        space7
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
                          deletePlayer7
                              ? Container(
                                  width: 44,
                                  color: space7
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
                                        space7 = !space7;
                                        space7
                                            ? nominatePlayers.remove(' 7,')
                                            : nominatePlayers.add(' 7,');
                                        isVotingContainer();
                                      });
                                    },
                                    child: const Text(
                                      '👍',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color.fromRGBO(15, 119, 240, 1),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 44,
                                ),
                          space7
                              ? const SizedBox()
                              : Expanded(
                                  child: Container(
                                    color: space7
                                        ? Colors.transparent
                                        : const Color.fromRGBO(15, 119, 240, 1),
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
                                                if (voting7 > 0) {
                                                  voting7--;
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
                                            '$voting7',
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
                                                if (voting7 < 9) {
                                                  voting7++;
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color:
                            deletePlayer8 ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(top: 2),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                hideRoles
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 26,
                                        child: Text(
                                          textNumber[7],
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: deletePlayer8
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
                                  width: 22,
                                  child: Text(
                                    '8',
                                    style: TextStyle(
                                      color: deletePlayer8
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
                                        space8 = true;
                                        deletePlayer8 = !deletePlayer8;
                                      });
                                    },
                                    child: Text(
                                      '╳',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: deletePlayer8
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
                          space8
                              ? const Expanded(
                                  child: SizedBox(),
                                )
                              : const SizedBox(),
                          Expanded(
                            child: Container(
                              child: deletePlayer8
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
                                                if (fouls8 > 0) {
                                                  fouls8--;
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
                                            '$fouls8',
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
                                                if (fouls8 < 4) {
                                                  fouls8++;
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
                                        space8
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
                          deletePlayer8
                              ? Container(
                                  width: 44,
                                  color: space8
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
                                        space8 = !space8;
                                        space8
                                            ? nominatePlayers.remove(' 8,')
                                            : nominatePlayers.add(' 8,');
                                        isVotingContainer();
                                      });
                                    },
                                    child: const Text(
                                      '👍',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color.fromRGBO(15, 119, 240, 1),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 44,
                                ),
                          space8
                              ? const SizedBox()
                              : Expanded(
                                  child: Container(
                                    color: space8
                                        ? Colors.transparent
                                        : const Color.fromRGBO(15, 119, 240, 1),
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
                                                if (voting8 > 0) {
                                                  voting8--;
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
                                            '$voting8',
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
                                                if (voting8 < 9) {
                                                  voting8++;
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color:
                            deletePlayer9 ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(top: 2),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                hideRoles
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 26,
                                        child: Text(
                                          textNumber[8],
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: deletePlayer9
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
                                  width: 22,
                                  child: Text(
                                    '9',
                                    style: TextStyle(
                                      color: deletePlayer9
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
                                        space9 = true;
                                        deletePlayer9 = !deletePlayer9;
                                      });
                                    },
                                    child: Text(
                                      '╳',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: deletePlayer9
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
                          space9
                              ? const Expanded(
                                  child: SizedBox(),
                                )
                              : const SizedBox(),
                          Expanded(
                            child: Container(
                              child: deletePlayer9
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
                                                if (fouls9 > 0) {
                                                  fouls9--;
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
                                            '$fouls9',
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
                                                if (fouls9 < 4) {
                                                  fouls9++;
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
                                        space9
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
                          deletePlayer9
                              ? Container(
                                  width: 44,
                                  color: space9
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
                                        space9 = !space9;
                                        space9
                                            ? nominatePlayers.remove(' 9,')
                                            : nominatePlayers.add(' 9,');
                                        isVotingContainer();
                                      });
                                    },
                                    child: const Text(
                                      '👍',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color.fromRGBO(15, 119, 240, 1),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 44,
                                ),
                          space9
                              ? const SizedBox()
                              : Expanded(
                                  child: Container(
                                    color: space9
                                        ? Colors.transparent
                                        : const Color.fromRGBO(15, 119, 240, 1),
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
                                                if (voting9 > 0) {
                                                  voting9--;
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
                                            '$voting9',
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
                                                if (voting9 < 9) {
                                                  voting9++;
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color:
                            deletePlayer10 ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(top: 2),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                hideRoles
                                    ? Container(
                                        alignment: Alignment.center,
                                        width: 26,
                                        child: Text(
                                          textNumber[9],
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: deletePlayer10
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
                                  width: 22,
                                  child: Text(
                                    '10',
                                    style: TextStyle(
                                      color: deletePlayer10
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
                                        space10 = true;
                                        deletePlayer10 = !deletePlayer10;
                                      });
                                    },
                                    child: Text(
                                      '╳',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: deletePlayer10
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
                          space10
                              ? const Expanded(
                                  child: SizedBox(),
                                )
                              : const SizedBox(),
                          Expanded(
                            child: Container(
                              child: deletePlayer10
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
                                                if (fouls10 > 0) {
                                                  fouls10--;
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
                                            '$fouls10',
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
                                                if (fouls10 < 4) {
                                                  fouls10++;
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
                                        space10
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
                          deletePlayer10
                              ? Container(
                                  width: 44,
                                  color: space10
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
                                        space10 = !space10;
                                        space10
                                            ? nominatePlayers.remove(' 10,')
                                            : nominatePlayers.add(' 10,');
                                        isVotingContainer();
                                      });
                                    },
                                    child: const Text(
                                      '👍',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color.fromRGBO(15, 119, 240, 1),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 44,
                                ),
                          space10
                              ? const SizedBox()
                              : Expanded(
                                  child: Container(
                                    color: space10
                                        ? Colors.transparent
                                        : const Color.fromRGBO(15, 119, 240, 1),
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
                                                if (voting10 > 0) {
                                                  voting10--;
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
                                            '$voting10',
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
                                                if (voting10 < 9) {
                                                  voting10++;
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
                      height: 66,
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
    );
  }
}
