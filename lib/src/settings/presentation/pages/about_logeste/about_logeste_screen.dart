import 'package:flutter/material.dart';

class AboutLogesteScreen extends StatelessWidget {
  final String aboutLogeste;
  const AboutLogesteScreen({Key? key, required this.aboutLogeste}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Text(
        aboutLogeste,
        style: Theme.of(context).textTheme.displayMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
