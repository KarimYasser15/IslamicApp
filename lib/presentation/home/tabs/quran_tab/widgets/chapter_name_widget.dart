import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/colors_manager.dart';
import 'package:islamic_app/core/utils/strings_manager.dart';

class ChapterNameWidget extends StatelessWidget {
  const ChapterNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: ColorsManager.goldColor, width: 2))),
      child: IntrinsicHeight(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Text(
                StringsManager.chapterName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          VerticalDivider(color: ColorsManager.goldColor, thickness: 2),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Text(
                StringsManager.versesNumber,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
