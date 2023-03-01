import 'package:flutter/material.dart';

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
        ? cleanColor = Colors.black
        : cleanColor = const Color(0x80181818);
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
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 13, bottom: 0, left: 13, right: 13),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: deletePlayer
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          height: 52,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    hideRoles
                                        ? Text(
                                            textNumber[0],
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              color: deletePlayer
                                                  ? cleanColor = Colors.black
                                                  : cleanColor =
                                                      const Color(0x66181818),
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        : const SizedBox(),
                                    Text(
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
                                    TextButton(
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
                                          // color();
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
                                  ],
                                ),
                              ),
                              space
                                  ? const Expanded(
                                      child: SizedBox(),
                                    )
                                  : const SizedBox(),
                              Expanded(
                                child: SizedBox(
                                  child: deletePlayer
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const SizedBox(
                                              width: 1,
                                              child: VerticalDivider(
                                                thickness: 1,
                                                indent: 11,
                                                endIndent: 11,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextButton(
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
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '$fouls',
                                              style: const TextStyle(
                                                fontSize: 17.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                            TextButton(
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
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            space
                                                ? const SizedBox(
                                                    width: 1,
                                                    child: VerticalDivider(
                                                      // width: 20,
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
                                      width: 42,
                                      color: space
                                          ? Colors.transparent
                                          : const Color.fromRGBO(
                                              15, 119, 240, 1),
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
                                      width: 42,
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
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const SizedBox(
                                                  width: 1,
                                                  child: VerticalDivider(
                                                    // width: 20,
                                                    thickness: 1,
                                                    indent: 11,
                                                    endIndent: 11,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                TextButton(
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
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '$voting',
                                                  style: const TextStyle(
                                                    fontSize: 17.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                TextButton(
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
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
