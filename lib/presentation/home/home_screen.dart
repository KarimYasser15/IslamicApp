import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/assets_manager.dart';
import 'package:islamic_app/core/utils/strings_manager.dart';
import 'package:islamic_app/presentation/home/tabs/hadith_tab.dart';
import 'package:islamic_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islamic_app/presentation/home/tabs/radio_tab.dart';
import 'package:islamic_app/presentation/home/tabs/sebha_tab.dart';
import 'package:islamic_app/presentation/home/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsManager.lightHomeBackground),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(StringsManager.quran),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context),
          child: BottomNavigationBar(
            onTap: (value) {
              selectedIndex = value;
              setState(() {

              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                  label: StringsManager.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                  label: StringsManager.hadith),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
                  label: StringsManager.sebha),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                  label: StringsManager.radio),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: StringsManager.settings),
            ]),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
