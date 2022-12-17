import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'reusuable_card.dart';
import 'bottom_nav_bar.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  void newFunction() {
    print('meow');
  }

  bool start = true, pause = true;
  Widget textData = Text('Start');

  void onButtonTap() {
    setState(() {
      if (start) {
        _controller.start();
        textData = Text('Pause');
        start = false;
      } else if (pause) {
        _controller.pause();
        textData = Text('Resume');
        pause = false;
      } else if (!pause) {
        _controller.resume();
        pause = true;
        textData = Text('Pause');
      }
    });
  }

  final int _duration = 1800;
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReusableCard(
          cardChild: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularCountDownTimer(
                      duration: _duration,
                      initialDuration: 0,
                      controller: _controller,
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 2,
                      ringColor: Colors.grey[300]!,
                      ringGradient: null,
                      fillColor: Color(0xFF1363DF),
                      fillGradient: null,
                      backgroundColor: Color(0xFF0A0E21),
                      backgroundGradient: null,
                      strokeWidth: 20.0,
                      strokeCap: StrokeCap.round,
                      textStyle: const TextStyle(
                        fontSize: 33.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textFormat: CountdownTextFormat.MM_SS,
                      isReverse: false,
                      isReverseAnimation: false,
                      isTimerTextShown: true,
                      autoStart: false,
                      onStart: () {
                        debugPrint('Countdown Started');
                      },
                      onComplete: () {
                        debugPrint('Countdown Ended');
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () => onButtonTap(),
                          child: textData,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _controller.restart(duration: _duration);
                                textData = Text('Pause');
                                pause = true;
                              });
                            },
                            child: Text('Restart')),
                      ],
                    ),
                  ],
                ),
              ),
              BottomNavBar(),
            ],
          ),
          colour: Color(0xFF0A0E21),
        ),
      ),
    );
  }
}
