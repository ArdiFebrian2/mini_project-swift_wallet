import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunai_mudah/app/routes/app_pages.dart';
import 'package:tunai_mudah/app/shared/theme.dart';
import 'package:tunai_mudah/app/widgets/MenuItemWidgets.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi,Ardi Febrian',
                style: semibold.copyWith(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Text(
                '081234456789',
                style: regular.copyWith(fontSize: 12, color: darkBlack),
              ),
            ],
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  width: Get.width,
                  height: 234,
                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: BorderRadius.circular(
                        12), // Tambahkan border radius di sini
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Saldo',
                        style: regular.copyWith(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Rp 570.000',
                        style: semibold.copyWith(
                          fontSize: 30,
                          color: darkBlack,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: darkBlack,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/icons/tf.png'),
                                      scale: 2,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Transfer',
                                style: regular.copyWith(
                                  fontSize: 12,
                                  color: darkBlack,
                                ),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              print('wallet tapped');
                              Get.toNamed(Routes.WALLET);
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: background,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/icons/topup.jpg'),
                                        scale: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Top Up',
                                  style: regular.copyWith(
                                    fontSize: 12,
                                    color: darkBlack,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: background,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/icons/scan.png'),
                                      scale: 2,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Scan',
                                style: regular.copyWith(
                                  fontSize: 12,
                                  color: darkBlack,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pembayaran',
                      style: semibold.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.PHONE_AMOUNT);
                          },
                          child: MenuItemWidgets(
                            image: 'pulsa.png',
                            label: 'Pulsa',
                          ),
                        ),
                        MenuItemWidgets(
                          image: 'wifi.png',
                          label: 'Wifi',
                        ),
                        MenuItemWidgets(
                          image: 'invest.png',
                          label: 'Invest',
                        ),
                        MenuItemWidgets(
                          image: 'games.png',
                          label: 'Game',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuItemWidgets(
                          image: 'asuransi.jpg',
                          label: 'Asuransi',
                        ),
                        MenuItemWidgets(
                          image: 'pln.png',
                          label: 'PLN',
                        ),
                        MenuItemWidgets(
                          image: 'bpjs.png',
                          label: 'BPJS',
                        ),
                        MenuItemWidgets(
                          image: 'air.jpg',
                          label: 'Air',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: Get.width,
                height: 900,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Transaksi Terakhir',
                              style: semibold.copyWith(fontSize: 18),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: Get.width,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hari Ini, 10 Jun'),
                              const SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: darkGrey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: orange,
                                        child: Text('T'),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Top Up',
                                            style:
                                                semibold.copyWith(fontSize: 12),
                                          ),
                                          Text(
                                            '09.00 Am',
                                            style: semibold.copyWith(
                                                fontSize: 12, color: darkGrey),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Text(
                                      '+Rp 700.00',
                                      style: semibold.copyWith(
                                        fontSize: 12,
                                        color: orange,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: orange,
                                        child: Text('B'),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'BPJS',
                                            style:
                                                semibold.copyWith(fontSize: 12),
                                          ),
                                          Text(
                                            '11.00 Am',
                                            style: semibold.copyWith(
                                                fontSize: 12, color: darkGrey),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Text(
                                      '-Rp 500.00',
                                      style: semibold.copyWith(
                                        fontSize: 12,
                                        color: subtleRed,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
