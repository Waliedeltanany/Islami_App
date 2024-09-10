import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/core/theme/application_theme.dart';
import 'package:islamic_app/moduls/ahadith/ahadith_view.dart';
import 'package:islamic_app/moduls/quran/quran_view.dart';
import 'package:islamic_app/moduls/radio/radio_view.dart';
import 'package:islamic_app/moduls/sebha/sebha_view.dart';
import 'package:islamic_app/moduls/settings/settings_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> screensList = [
    const QuranView(),
    AhadithView(),
    const SebhaView(),
    const RadioView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg3.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(lang.islami),
        ),
        body: screensList[selectedIndex],
        //Button Navigation bar: Buttons that appear below the screen body
        //By pressing on any bottom navigation bar body must changes by default
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          backgroundColor: ApplicationThemeManager.primaryColor,
          //Items: List of buttons navigation bar items and it must contain at least two items
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/quran.png"),
              ),
              label: lang.quran,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/quran-quran-svgrepo-com.png"),
              ),
              label: lang.ahadith,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/sebha.png"),
              ),
              label: lang.sebha,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/radio.png"),
              ),
              label: lang.radio,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: lang.setting,
            ),
          ],
        ),
      ),
    );
  }
}
