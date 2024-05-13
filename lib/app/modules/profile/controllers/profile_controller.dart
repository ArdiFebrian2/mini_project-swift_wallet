import 'package:get/get.dart';

class ProfileController extends GetxController {
  var username = 'Ardi Febrian'.obs;
  var email = 'ardi@example.com'.obs;

  void updateUsername(String newUsername) {
    username.value = newUsername;
  }

  void updateEmail(String newEmail) {
    email.value = newEmail;
  }
}
