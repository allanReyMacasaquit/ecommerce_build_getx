import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../controllers/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          notchMargin: 10,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _bottomAppBarItem(icon: IconlyLight.home, page: 0),
                    _bottomAppBarItem(icon: IconlyLight.bookmark, page: 1),
                    _bottomAppBarItem(icon: IconlyLight.buy, page: 2),
                    _bottomAppBarItem(icon: IconlyLight.profile, page: 3),
                  ],
                ),
              )),
        ),
        body: PageView(
          controller: _homeController.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [..._homeController.pages],
        ));
  }

  Widget _bottomAppBarItem({icon, page}) {
    return IconButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () => {_homeController.goToTab(page)},
      icon: Icon(
        icon,
        size: 22,
        color: _homeController.currentPage == page
            ? Colors.blue.shade700
            : Colors.grey,
      ),
    );
  }
}
