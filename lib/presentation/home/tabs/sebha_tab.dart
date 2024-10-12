import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/assets_manager.dart';
import 'package:islamic_app/core/utils/colors_manager.dart';
import 'package:islamic_app/core/utils/strings_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int sebhaCounter = 0;
  List<String> tasbeehName = ["سبحان الله", "الحمد لله", "الله اكبر"];
  int currentTasbeehIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 250,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(AssetsManager.headSebha, height: 90),
                  top: 30,
                  left: 0,
                  right: 0,
                ),
                Positioned(
                  child: Image.asset(
                    AssetsManager.bodySebha,
                    height: 200,
                  ),
                  top: 70,
                  left: 0,
                  right: 0,
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Text(
            StringsManager.tasbeehCounterArabic,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 70,
              width: 60,
              decoration: BoxDecoration(
                  color: ColorsManager.lightGoldColor,
                  borderRadius: BorderRadius.circular(25)),
              child:
                  Text(sebhaCounter.toString(), style: TextStyle(fontSize: 20)),
              alignment: AlignmentDirectional.center),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 130,
            child: TextButton(
                onPressed: () {
                  changeTasbeeh();
                },
                child: Text(
                  tasbeehName[currentTasbeehIndex],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: ColorsManager.goldColor)),
          )
        ],
      ),
    );
  }

  void changeTasbeeh() {
    if (sebhaCounter == 33) {
      sebhaCounter = 0;
      if (checkTasbeehIndex()) {
        currentTasbeehIndex++;
      }
      else
        {
          currentTasbeehIndex = 0;
        }
    }
    else
      {
        sebhaCounter++;
      }
    setState(() {

    });
  }

  bool checkTasbeehIndex() {
    if (currentTasbeehIndex < 2) {
      return true;
    }
    return false;
  }
}
