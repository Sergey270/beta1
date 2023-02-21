import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {


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
    return  Container(

      decoration: BoxDecoration(
        color: deletePlayer
            ? Colors.white
            : Colors.transparent,
        borderRadius:
        const BorderRadius.all(Radius.circular(5)),
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
                    color: cleanColor,
                  ),
                )
                    : const SizedBox(),
                Text(
                  '1',
                  style: TextStyle(
                    color: cleanColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
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
                      color();
                    });
                  },
                  child: Text(
                    '╳',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: cleanColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          space
              ? Expanded(
            child: Container(),
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
                        fontSize: 24.0,
                        color: Color.fromRGBO(
                            24, 24, 24, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text('$fouls'),
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
                        fontSize: 24.0,
                        color: Color.fromRGBO(
                            24, 24, 24, 1),
                        fontWeight: FontWeight.w400,
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
            width: 48,
            color: space
                ? Colors.transparent
                : Colors.blue,
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
                  fontSize: 24.0,
                  color:
                  Color.fromRGBO(24, 24, 24, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
              : const SizedBox(
            width: 48,
          ),
          space
              ? const SizedBox()
              : Expanded(
            child: Container(
              color: space
                  ? Colors.transparent
                  : Colors.blue,
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
                            fontSize: 24.0,
                            color: Color.fromRGBO(
                                24, 24, 24, 1),
                            fontWeight:
                            FontWeight.w400,
                          ),
                        ),
                      ),
                      Text('$voting'),
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
                            fontSize: 24.0,
                            color: Color.fromRGBO(
                                24, 24, 24, 1),
                            fontWeight:
                            FontWeight.w400,
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
    );
  }
}

