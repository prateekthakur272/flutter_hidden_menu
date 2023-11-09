import 'package:flutter/material.dart';
import 'package:flutter_hidden_menu/screens/home_screen.dart';
import 'package:flutter_hidden_menu/screens/settings_screen.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenMenu extends StatefulWidget {
  const HiddenMenu({super.key});

  @override
  State<HiddenMenu> createState() => _HiddenMenuState();
}

class _HiddenMenuState extends State<HiddenMenu> {
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        initPositionSelected: 0,
        slidePercent: 50,
        contentCornerRadius: 48,
        curveAnimation: Curves.decelerate,
        screens: [
          ScreenHiddenDrawer(
              ItemHiddenMenu(
                  colorLineSelected: Colors.deepPurple.shade500,
                  name: 'Home',
                  baseStyle: const TextStyle(color: Colors.white, fontSize: 18),
                  selectedStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              const HomeScreen()),
          ScreenHiddenDrawer(
              ItemHiddenMenu(
                  colorLineSelected: Colors.deepPurple.shade500,
                  name: 'Settings',
                  baseStyle: const TextStyle(color: Colors.white, fontSize: 18),
                  selectedStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              const SettingsScreen()),
        ],
        backgroundColorMenu: Colors.deepPurple.shade300);
  }
}
