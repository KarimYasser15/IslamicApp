import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors_manager.dart';
import '../../../../../core/utils/strings_manager.dart';

class QuranListWidget extends StatelessWidget {
  String chapterName;
  String verseNumber;
  QuranListWidget({required this.chapterName, required this.verseNumber});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print("object"),
      child: IntrinsicHeight(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                chapterName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          VerticalDivider(color: ColorsManager.goldColor, thickness: 2),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                verseNumber,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
