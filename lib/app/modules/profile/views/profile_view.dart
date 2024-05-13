import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:tunai_mudah/app/modules/signin/views/signin_view.dart';
import 'package:tunai_mudah/app/shared/theme.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController()); // Inisialisasi ProfileController

    return GetBuilder<ProfileController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.logout), // Tombol Logout
              onPressed: () {
                Get.offAll(SigninView()); // Navigasi ke SigninView saat logout
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage:
                    AssetImage('assets/icons/profile.jpg'), // Foto profil
              ),
              SizedBox(height: 20),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Baris info untuk username, email, lokasi, dan nomor telepon
                      _buildInfoRow(
                        'Username',
                        controller.username.value,
                        () => _showEditDialog(
                          context,
                          'Edit Username',
                          controller.username.value,
                          (value) => controller.updateUsername(value),
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildInfoRow(
                        'Email',
                        controller.email.value,
                        () => _showEditDialog(
                          context,
                          'Edit Email',
                          controller.email.value,
                          (value) => controller.updateEmail(value),
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildInfoRow(
                        'Lokasi',
                        'Payakumbuh', // Lokasi statis
                        null,
                      ),
                      SizedBox(height: 20),
                      _buildInfoRow(
                        'Telepon',
                        '+62 123 4567 890', // Nomor telepon statis
                        null,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk membuat baris info dengan opsi edit
  Widget _buildInfoRow(String title, String value, void Function()? onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                value,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: onPressed != null ? orange : Colors.black,
                ),
              ),
              if (onPressed != null)
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: onPressed,
                ),
            ],
          ),
        ),
      ],
    );
  }

  // Menampilkan dialog untuk mengedit informasi
  void _showEditDialog(BuildContext context, String title, String initialValue,
      Function(String) onSave) {
    TextEditingController _controller =
        TextEditingController(text: initialValue);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Masukkan nilai baru',
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                onSave(_controller.text);
                Navigator.of(context).pop();
              },
              child: Text('Simpan'),
            ),
          ],
        );
      },
    );
  }
}
