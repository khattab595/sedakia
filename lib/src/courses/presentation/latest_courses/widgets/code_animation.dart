import 'dart:async';
import 'dart:math';
import 'package:app/core/utils/helper_methods.dart';
import 'package:app/src/courses/presentation/latest_courses/widgets/random_text_animation.dart';
import 'package:flutter/material.dart';

class CodeAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: HelperMethods.getProfile(),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.waiting
            ? const CircularProgressIndicator()
            :
          RandomTextAnimation(
          text: snapshot.data?.specialCode ?? '',
        );
      },
    );
  }
}
