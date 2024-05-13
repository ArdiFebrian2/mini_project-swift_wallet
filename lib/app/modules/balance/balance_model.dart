// import 'package:flutter/material.dart';

// class BalanceModel {
//   final String category;
//   final DateTime time;
//   final double nominal;

//   BalanceModel({
//     required this.category,
//     required this.time,
//     required this.nominal,
//   });

//   factory BalanceModel.fromJson(Map<String, dynamic> json) {
//     return BalanceModel(
//       category: json['category'] ?? '',
//       time: DateTime.parse(json['time'] ?? ''),
//       nominal: json['nominal'] ?? 0,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'category': category,
//       'time': time.toIso8601String(),
//       'nominal': nominal,
//     };
//   }
// }
