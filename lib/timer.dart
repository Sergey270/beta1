import 'dart:async';

import 'package:flutter/material.dart';

class TimerPlayer extends StatefulWidget {
  const TimerPlayer({Key? key}) : super(key: key);

  @override
  State<TimerPlayer> createState() => _TimerPlayerState();
}

class _TimerPlayerState extends State<TimerPlayer> {
  Timer? _timer;
  bool isStart = false;
  bool isColorTime = true;
  late Color colorTimeText;
  late var timeStr = '';
  late int _waitTime;

  // int waitTime = 0;

  @override
  void initState() {
    super.initState();
    _waitTime = 0;
    isStart = false;
    colorTimeText = Colors.white;
    _calculationTime();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  void start() {
    if (_waitTime >= 0) {
      setState(() {
        isStart = true;
      });
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        _waitTime++;
        _calculationTime();
      });
    }
  }

  void restart() {
    _waitTime = 0;
    _calculationTime();
  }

  void pause() {
    _timer?.cancel();
    setState(() {
      isStart = false;
    });
  }

  void _calculationTime() {
    var minuteStr = (_waitTime ~/ 60).toString();
    var secondStr = (_waitTime % 60).toString().padLeft(2, '0');
    setState(() {
      colorTime();
      timeStr = '$minuteStr:$secondStr';
    });
  }

  void colorTime() {
    if (_waitTime > 49) {
      colorTimeText = Colors.red;
    } else {
      colorTimeText = Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 17, right: 17),
      height: 48,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isStart
              ? IconButton(
                  icon: const Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    pause();
                  },
                )
              : IconButton(
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    start();
                  },
                ),
          Text(
            timeStr,
            style: TextStyle(
              color: colorTimeText,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.restart_alt,
              color: Colors.white,
            ),
            onPressed: () {
              restart();
            },
          ),
        ],
      ),
    );
  }
}
