import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletController extends GetxController {
  // RxInt untuk indeks yang dipilih
  RxInt setAmountIndex = 0.obs;

  // TextEditingController untuk mengontrol nilai di dalam TextField
  TextEditingController amountController = TextEditingController();

  // Method untuk mengatur indeks yang dipilih
  void setIndex(int index) {
    // Update nilai indeks
    setAmountIndex.value = index;

    // Update nilai di dalam TextField berdasarkan indeks yang dipilih
    switch (index) {
      case 10000:
        amountController.text = "10000";
        break;
      case 50000:
        amountController.text = "50000";
        break;
      case 100000:
        amountController.text = "100000";
        break;
      case 250000:
        amountController.text = "250000";
        break;
      case 500000:
        amountController.text = "500000";
        break;
      case 1000000:
        amountController.text = "1000000";
        break;
      case 1500000:
        amountController.text = "1500000";
        break;
      default:
        amountController.text = "";
    }

    // Memanggil update untuk memperbarui tampilan
    update();
  }
}
