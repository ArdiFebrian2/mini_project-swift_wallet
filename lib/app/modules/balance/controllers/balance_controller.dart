import 'package:get/get.dart';
import 'package:tunai_mudah/app/data/api/api.dart';

class BalanceController extends GetxController {
  // Deklarasi layanan untuk mengambil riwayat
  HistoryService _historyService = HistoryService();

  // RxList untuk menyimpan data riwayat
  final RxList<dynamic> histories = <dynamic>[].obs;

  // Fungsi untuk memuat riwayat
  void loadHistories() async {
    try {
      final response = await _historyService.getHistory();
      if (response.statusCode == 200) {
        // Menetapkan data riwayat dari respons API ke RxList
        histories.assignAll(response.data);
        // Memperbarui UI jika diperlukan
        update();
      } else {
        // Handle kesalahan
        print('Error loading histories: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception caught: $e');
    }
  }

  @override
  void onInit() {
    super.onInit();
    // Memuat riwayat saat controller diinisialisasi
    loadHistories();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
