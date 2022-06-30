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
                      // Countdown duration in Seconds.
                      duration: _duration,

                      // Countdown initial elapsed Duration in Seconds.
                      initialDuration: 0,

                      // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
                      controller: _controller,

                      // Width of the Countdown Widget.
                      width: MediaQuery.of(context).size.width / 2,

                      // Height of the Countdown Widget.
                      height: MediaQuery.of(context).size.height / 2,

                      // Ring Color for Countdown Widget.
                      ringColor: Colors.grey[300]!,

                      // Ring Gradient for Countdown Widget.
                      ringGradient: null,

                      // Filling Color for Countdown Widget.
                      fillColor: Color(0xFF1363DF),

                      // Filling Gradient for Countdown Widget.
                      fillGradient: null,

                      // Background Color for Countdown Widget.
                      backgroundColor: Color(0xFF0A0E21),

                      // Background Gradient for Countdown Widget.
                      backgroundGradient: null,

                      // Border Thickness of the Countdown Ring.
                      strokeWidth: 20.0,

                      // Begin and end contours with a flat edge and no extension.
                      strokeCap: StrokeCap.round,

                      // Text Style for Countdown Text.
                      textStyle: const TextStyle(
                        fontSize: 33.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),

                      // Format for the Countdown Text.
                      textFormat: CountdownTextFormat.MM_SS,

                      // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
                      isReverse: false,

                      // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
                      isReverseAnimation: false,

                      // Handles visibility of the Countdown Text.
                      isTimerTextShown: true,

                      // Handles the timer start.
                      autoStart: false,

                      // This Callback will execute when the Countdown Starts.
                      onStart: () {
                        // Here, do whatever you want
                        debugPrint('Countdown Started');
                      },

                      // This Callback will execute when the Countdown Ends.
                      onComplete: () {
                        // Here, do whatever you want
                        debugPrint('Countdown Ended');
                      },

                      // This Callback will execute when the Countdown Changes.
                      // onChange: (String timeStamp) {
                      //   // Here, do whatever you want
                      //   debugPrint('Countdown Changed $timeStamp');
                      // },
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
