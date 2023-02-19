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
  late Color _numberColor;
  late Color _numberColor2;
  late Text textContainer;

  List<String> textNumber = [''];
  List<String> textNumber2 = [''];

  int indexNumber = 0;
  int indexNumber2 = 0;
  int count = 10;
  int count2 = 10;
  var _selestIndex = 0;

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

      count--;
      count2--;
    } else if (indexNumber > 0 &&
        indexNumber < (textNumber.length - 1) &&
        (textNumber[indexNumber] != 'X') &&
        textNumber[indexNumber + 1] == 'X') {
      indexNumber++;
      indexNumber2++;
      count2--;
    } else if (indexNumber > 0 &&
        indexNumber < (textNumber.length - 1) &&
        (textNumber[indexNumber] != 'X') &&
        textNumber[indexNumber + 1] != 'X') {
      indexNumber++;
      indexNumber2++;
      count--;
      count2--;
    } else if (indexNumber > 0 &&
        indexNumber < (textNumber.length - 1) &&
        (textNumber[indexNumber] == 'X') &&
        (textNumber[indexNumber + 1] != 'X')) {
      indexNumber++;
      indexNumber2++;
      count--;
      count2--;
    } else if (indexNumber > 0 &&
        indexNumber < (textNumber.length - 1) &&
        (textNumber[indexNumber] == 'X') &&
        (textNumber[indexNumber + 1] == 'X')) {
      indexNumber++;
      indexNumber2++;
      count2--;
    } else if (indexNumber == (textNumber.length - 1)) {
      indexNumber = 0;
      indexNumber2 = 0;
      count = 10;
      count2 = 10;
      textNumber = [
        ' ',
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

      // _getMaxSeats.clear();

      if ((textNumber.length - 1) - indexNumber < maxSeats) {
        for (var k = 0; k < (maxSeats - (10 - indexNumber)); k++) {
          textNumber.add('X');
        }

        textNumber2[0] = textNumber[indexNumber];

        textNumber.removeRange(0, indexNumber + 1);
        textNumber.shuffle();
        textNumber.insert(0, '');
        textNumber.insert(1, '');

        textNumber[1] = textNumber2[0];

        indexNumber2 = 0;

        indexNumber = 1;
        count2 = maxSeats;
        check = count2;
      }
    }
  }

  void _colorBox() {
    if (check < 10) {
      check = 0;

      if (indexNumber > 1) {
        _containerColor = Colors.white;
        textContainer = const Text(
          'Предыдущий \n номер',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 10.0,
          ),
        );
      } else {
        _containerColor = Colors.transparent;
        textContainer = const Text('');
        check = 0;
      }
    } else {
      check = 0;
    }
  }

  void control() {
    _getMaxSeats = TextEditingController(text: count2.toString());
  }

  void numberColor() {
    if (textNumber[indexNumber] == 'X') {
      _numberColor = Colors.redAccent;
    } else {
      _numberColor = Colors.black;
    }
  }

  void numberColor2() {
    if (textNumber[indexNumber2] == 'X') {
      _numberColor2 = Colors.redAccent;
    } else {
      _numberColor2 = Colors.black;
    }
  }

  void onSelectTap(int index) {
    setState(() {
      if (_selestIndex == index) return;
      _selestIndex = index;
      // _bodyWidget = _build_bodyWidget(index);
    });
  }

  @override
  void initState() {
    textNumber = [
      ' ',
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
    textContainer = const Text('');
    _numberColor = Colors.black;
    _numberColor2 = Colors.black;
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    super.initState();
    _getMaxSeats = TextEditingController(text: count2.toString());
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
          backgroundColor: const Color(0xF7F8F8FF),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: const Text(
              'Раздача номеров',
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
                        top: 40, bottom: 5, left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 90,
                              width: 80,
                              decoration: BoxDecoration(
                                color: _containerColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Column(
                                children: [
                                  const Padding(padding: EdgeInsets.all(5)),
                                  const Spacer(flex: 1),

                                  // const Padding(padding: EdgeInsets.all(5)),
                                  Text(
                                    textNumber[indexNumber2],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: _numberColor2,
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(flex: 1),

                                  textContainer,
                                ],
                              ),
                            ),
                            Container(
                              height: 160,
                              width: 140,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Column(
                                children: [
                                  const Padding(padding: EdgeInsets.all(5)),
                                  const Spacer(flex: 1),
                                  Text(
                                    textNumber[indexNumber],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: _numberColor,
                                      fontSize: 72.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(flex: 1),
                                  const Text(
                                    'Номер за столом',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  const Padding(padding: EdgeInsets.all(8)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 80,
                              width: 80,
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.all(20)),
                        Container(
                          height: 50,
                          //color: Colors.white,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              const Text(
                                ' Кол-во доступных мест',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                '$count  ',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(2)),
                        Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              const Text(
                                ' Кол-во желающих играть',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                width: 36.0,
                                //height: 60.0,

                                child: TextFormField(
                                  controller: _getMaxSeats,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Padding(padding: EdgeInsets.all(110)),
                        Container(
                          height: 60,
                          width: double.infinity,
                          // color: Colors.cyan,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                _getList();
                                _gerRandomNumber();
                                _colorBox();
                                control();
                                numberColor();
                                numberColor2();
                              });
                            },
                            child: const Text(
                              'Получить номер',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28.0,
                              ),
                            ),
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
