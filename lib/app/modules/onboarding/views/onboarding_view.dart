import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunai_mudah/app/routes/app_pages.dart';
import 'package:tunai_mudah/app/shared/theme.dart';
import 'package:tunai_mudah/app/widgets/OnBoardingWidgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView untuk tampilan onboarding
          PageView(
            controller: controller.indicator,
            onPageChanged: ((value) {
              controller.page.value = value;
              print(controller.page.value);
            }),
            children: [
              // Halaman-halaman onboarding
              OnBoardingWidgets(
                image: 'getstarted.png',
                title: 'Jelajahi Semua',
                subtitle:
                    'perjalanan finansial Anda dimulai di sini. Kita\ndi sini untuk membantu Anda melacak dan menangani semuanya\nTransaksi Selama 24jam.',
              ),
              OnBoardingWidgets(
                image: 'getstarted2.png',
                title: 'Transaksi Cepat',
                subtitle:
                    'Get easy to pay all yours bills with just a\nbeberapa pilihan membayar tagihan Anda menjadi cepat \nand efficient. Enjoy',
              ),
              OnBoardingWidgets(
                image: 'getstarted3.png',
                title: 'Enjoy Everyday!',
                subtitle:
                    'Jadilah bijak, dan temukan keuangan terbaik Anda\npengalaman bersama kami. Semuanya ada di disini\nyour hands!',
              ),
            ],
          ),
          // Tombol "Skip"
          Container(
            alignment: Alignment(0.8, -0.85),
            child: GestureDetector(
              onTap: () {
                controller.indicator.jumpToPage(3);
              },
              child: Text('Skip'),
            ),
          ),
          // Indicator halaman
          Obx(
            () => Container(
              alignment: Alignment(0, 0.85),
              child: controller.page.value != 2
                  ? SmoothPageIndicator(
                      controller: controller.indicator,
                      count: 3,
                      effect: const SlideEffect(
                        activeDotColor: orange,
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 8,
                        dotHeight: 8,
                        dotColor: darkGrey,
                      ),
                    )
                  // Tombol "Getting Started"
                  : GestureDetector(
                      onTap: () {
                        Get.offAllNamed(Routes.SIGNIN);
                      },
                      child: Container(
                        height: 55,
                        width: Get.width * 0.8,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Getting Started',
                          style: semibold.copyWith(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
