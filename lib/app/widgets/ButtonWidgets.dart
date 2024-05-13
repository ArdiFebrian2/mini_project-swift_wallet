import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import Get package untuk memanfaatkan Get.width
import 'package:tunai_mudah/app/shared/theme.dart'; // Import tema aplikasi

class ButtonWidgets extends StatelessWidget {
  final String? label; // Label yang ditampilkan pada tombol
  const ButtonWidgets({this.label}); // Konstruktor dengan parameter opsional

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55, // Tinggi tombol
      width: Get
          .width, // Lebar tombol setara dengan lebar layar menggunakan Get.width
      alignment: Alignment.center, // Penataan isi tombol ke tengah
      padding: const EdgeInsets.symmetric(vertical: 14), // Padding vertical
      decoration: BoxDecoration(
        color: Colors.deepOrange, // Warna latar belakang tombol
        borderRadius:
            BorderRadius.circular(8), // Membuat sudut melengkung pada tombol
      ),
      child: Text(
        '${label}', // Teks yang ditampilkan sesuai dengan nilai label yang diberikan
        style: semibold.copyWith(
          // Gaya teks dengan font berat setengah (semibold)
          color: Colors.white, // Warna teks putih
          fontSize: 18, // Ukuran teks 18
        ),
      ),
    );
  }
}
