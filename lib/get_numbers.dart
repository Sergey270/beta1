import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main_screen_widget.dart';

class GetNumbers extends StatefulWidget {
  const GetNumbers({Key? key}) : super(key: key);

  @override
  State<GetNumbers> createState() => _GetNumbersState();
}

class _GetNumbersState extends State<GetNumbers> {
  late TextEditingController _getMaxSeats = TextEditingController();

  late Color _containerColor;
  Color numberColorBox2 = Colors.transparent;
  late Text textContainerSmall;
  late Text textContainer;
  late Text getNumberButton;

  late Color colorNumberButton;

  List<String> textNumber = [''];
  List<String> textNumber2 = [''];

  int indexNumber = 0;
  int indexNumber2 = 0;
  int countFreePlace = 10;
  int countWantPlay = 10;

  int check = 0;

  int maxSeats = 0;

  void _gerRandomNumber() {
    if (indexNumber == 0) {
      textNumber = [
        '1 ',
        '2 ',
        '3 ',
        '4 ',
        '5 ',
        '6 ',
        '7 ',
        '8 ',
        '9 ',
        '10',
      ]..shuffle();

      textNumber.insert(0, '');

      indexNumber++;

      countFreePlace--;
      countWantPlay--;
    } else if (indexNumber > 0 &&
        indexNumber < (textNumber.length - 1) &&
        (textNumber[indexNumber] != '❌') &&
        textNumber[indexNumber + 1] == '❌') {
      indexNumber++;
      indexNumber2++;
      countWantPlay--;
    } else if (indexNumber > 0 &&
        indexNumber < (textNumber.length - 1) &&
        (textNumber[indexNumber] != '❌') &&
        textNumber[indexNumber + 1] != '❌') {
      indexNumber++;
      indexNumber2++;
      countFreePlace--;
      countWantPlay--;
    } else if (indexNumber > 0 &&
        indexNumber < (textNumber.length - 1) &&
        (textNumber[indexNumber] == '❌') &&
        (textNumber[indexNumber + 1] != '❌')) {
      indexNumber++;
      indexNumber2++;
      countFreePlace--;
      countWantPlay--;
    } else if (indexNumber > 0 &&
        indexNumber < (textNumber.length - 1) &&
        (textNumber[indexNumber] == '❌') &&
        (textNumber[indexNumber + 1] == '❌')) {
      indexNumber++;
      indexNumber2++;
      countWantPlay--;
    } else if (indexNumber == (textNumber.length - 1)) {
      indexNumber = 0;
      indexNumber2 = 0;
      countFreePlace = 10;
      countWantPlay = 10;
      textNumber = [
        '#',
        '1 ',
        '2 ',
        '3 ',
        '4 ',
        '5 ',
        '6 ',
        '7 ',
        '8 ',
        '9 ',
        '10',
      ];
    }
  }

  void _getList() {
    if (_getMaxSeats.text.isNotEmpty) {
      maxSeats = int.parse(_getMaxSeats.text);

      if ((textNumber.length - 1) - indexNumber < maxSeats) {
        for (var k = 0; k < (maxSeats - (10 - indexNumber)); k++) {
          textNumber.add('❌');
        }

        textNumber2[0] = textNumber[indexNumber];

        textNumber.removeRange(0, indexNumber + 1);
        textNumber.shuffle();
        textNumber.insert(0, '');
        textNumber.insert(1, '');

        textNumber[1] = textNumber2[0];

        indexNumber2 = 0;

        indexNumber = 1;
        countWantPlay = maxSeats;
        check = countWantPlay;
      }
    }
  }

  void changeTextBigContainer() {
    if (textNumber[indexNumber] != '❌') {
      textContainer = const Text(
        'Номер за столом',
        style: TextStyle(
          color: Colors.black,
          fontSize: 13.0,
        ),
      );
    } else {
      textContainer = const Text(
        'Не играешь',
        style: TextStyle(
          color: Colors.black,
          fontSize: 13.0,
        ),
      );
    }
  }

  void changeGetNumberButton() {
    if (maxSeats == 1) {
      getNumberButton = const Text(
        'Начать заново',
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
        ),
      );
      colorNumberButton =
          const Color.fromRGBO(15, 119, 240, 0.5019607843137255);
    } else {
      getNumberButton = const Text(
        'Получить номер',
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
        ),
      );
      colorNumberButton = const Color.fromRGBO(15, 119, 240, 1);
    }
  }

  void _colorBox() {
    if (check < 10) {
      check = 0;

      if (indexNumber > 1) {
        _containerColor = Colors.white;
        textContainerSmall = const Text('Предыдущий \n номер',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 9.0,
            ),
            overflow: TextOverflow.ellipsis);
        numberColorBox2 = Colors.black;
      } else {
        _containerColor = Colors.transparent;
        textContainerSmall = const Text('');
        numberColorBox2 = Colors.transparent;
        check = 0;
      }
    } else {
      check = 0;
    }
  }

  void control() {
    _getMaxSeats = TextEditingController(text: countWantPlay.toString());
  }

  @override
  void initState() {
    textNumber = [
      '#',
      '1 ',
      '2 ',
      '3 ',
      '4 ',
      '5 ',
      '6 ',
      '7 ',
      '8 ',
      '9 ',
      '10',
    ];
    _containerColor = Colors.transparent;
    textContainerSmall = const Text('');

    getNumberButton = const Text(
      'Получить номер',
      style: TextStyle(
        color: Colors.white,
        fontSize: 17.0,
        fontWeight: FontWeight.w600,
      ),
    );

    textContainer = const Text(
      'Номер за столом',
      style: TextStyle(
        color: Colors.black,
        fontSize: 13.0,
      ),
    );

    colorNumberButton = const Color.fromRGBO(15, 119, 240, 1);

    SystemChannels.textInput.invokeMethod('TextInput.hide');

    super.initState();
    _getMaxSeats = TextEditingController(text: countWantPlay.toString());
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
            title: const Text(
              'Раздача номеров',
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
              padding: EdgeInsets.zero,

              //Hide keyboard on scroll in Flutter
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height -
                              MediaQuery.of(context).viewPadding.top -
                              AppBar().preferredSize.height -
                              MediaQuery.of(context).padding.top -
                              kBottomNavigationBarHeight -
                              64,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0, bottom: 0, left: 14, right: 14),
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Container(
                              height: 56,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: colorNumberButton,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _getList();
                                      _gerRandomNumber();
                                      _colorBox();
                                      control();
                                      changeTextBigContainer();
                                      changeGetNumberButton();
                                    });
                                  },
                                  child: getNumberButton),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 37, bottom: 0, left: 14, right: 14),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 420,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 144,
                                    margin: const EdgeInsets.only(right: 14.0),
                                    decoration: BoxDecoration(
                                      color: _containerColor,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 26.0, bottom: 21),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(textNumber[indexNumber2],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: numberColorBox2,
                                                fontSize: 50.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              overflow: TextOverflow.ellipsis),
                                          textContainerSmall,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 207,
                                  width: 163,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 28.0,
                                      bottom: 21.0,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          textNumber[indexNumber],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 100.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        textContainer,
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 144,
                                    margin: const EdgeInsets.only(left: 14.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 31)),
                          Container(
                            padding: const EdgeInsets.only(left: 16, right: 12),
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              textBaseline: TextBaseline.ideographic,
                              children: [
                                const Text(
                                  ' Свободных мест',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  '$countFreePlace  ',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(1)),
                          Container(
                            padding: const EdgeInsets.only(left: 16, right: 12),
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              textBaseline: TextBaseline.ideographic,
                              children: [
                                const Text(
                                  ' Желающих играть',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 36.0,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    controller: _getMaxSeats,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(2),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontSize: 17.0,
                                      color: Color.fromRGBO(15, 119, 240, 1),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
