import 'package:app/src/main_index.dart';
import 'package:flutter/material.dart';

///  Created by harbey on 9/15/2023.
class CategoryTitle extends StatelessWidget {
  final String title;

  const CategoryTitle({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: kRedColorEB,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Padding(
            padding: 10.paddingStart + 10.paddingBottom,
            child: Text(title, style: context.headlineSmall.copyWith(fontSize: 20),),
          ),
          Image.asset(AppImages.category_name_logo,
            height: 50,
            width: 185,
          ),
        ],
      ),
    );
  }
}
