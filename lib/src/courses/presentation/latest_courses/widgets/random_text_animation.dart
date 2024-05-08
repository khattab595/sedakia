
import 'dart:async';
import 'dart:math';
import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:flutter/material.dart';


class RandomTextAnimation extends StatefulWidget {
  final String text;
  const RandomTextAnimation({required this.text});
  @override
  _RandomTextAnimationState createState() => _RandomTextAnimationState();
}

class _RandomTextAnimationState extends State<RandomTextAnimation> {
  Random _random = Random();
  double _top = 100;
  double _left = 100;

  @override
  void initState() {
    super.initState();
    // Start a timer to update the position every 2 seconds
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      setState(() {
        _top = _random.nextDouble() * 100;
        _left = _random.nextDouble() * 100;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedPositioned(
          top: _top,
          left: _left,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          child: PrimaryRegularText(
            label: widget.text,
            labelColor: Color(0xff606CBF),
          ),
        ),
      ],
    );
  }
}