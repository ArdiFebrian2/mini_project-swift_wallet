import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tunai_mudah/app/shared/theme.dart';

import '../controllers/bottomnavigation_controller.dart';

class BottomnavigationView extends GetView<BottomnavigationController> {
  const BottomnavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: controller.screens[controller.CurrentIndex.value],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedIconTheme:
              IconThemeData(color: orange), // Warna ikon saat dipilih
          unselectedIconTheme: IconThemeData(color: orange.withOpacity(0.5)),
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => controller.SetIndex(index),
          currentIndex:
              controller.CurrentIndex.value, // Menetapkan indeks saat ini
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Serach',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
