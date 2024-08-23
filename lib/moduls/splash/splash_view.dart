//Ways for creation splash view
//1-Native way (Android folder)
//app -- src -- main -- res -- values(light theme) -- values(dark theme)
//makan el launch bachground in style (Android folder) h7ot el sora ely ana 3awz a3rdha
//And we make this process by XD

//2-Design way
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic_app/layout/layout_view.dart';

//we change the widget to stateful widget cause of timer
class SplashView extends StatefulWidget {
  //giving the screen its identity

  static const String routeName = "/";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  //initState: first implemented function before build
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, LayoutView.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/Group 8 (1).png");
  }
}
