import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/search_controller.dart' as MySearchController;

class SearchView extends GetView<MySearchController.SearchController> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement your logic here
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
