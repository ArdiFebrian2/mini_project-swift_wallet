import 'package:get/get.dart';
import 'package:tunai_mudah/app/modules/balance/views/balance_view.dart';
import 'package:tunai_mudah/app/modules/home/views/home_view.dart';
import 'package:tunai_mudah/app/modules/profile/views/profile_view.dart';
import 'package:tunai_mudah/app/modules/search/views/search_view.dart';

class BottomnavigationController extends GetxController {
  RxInt CurrentIndex = 0.obs;

  final screens = [
    HomeView(),
    BalanceView(),
    SearchView(),
    ProfileView(),
  ];

  SetIndex(index) {
    print(index);
    CurrentIndex.value = index;
    update();
  }
}
