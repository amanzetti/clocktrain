// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
//   const TimestampSerializer();

//   @override
//   DateTime fromJson(dynamic timestamp) {
//     // Se è un Timestamp (ad esempio da Firestore)
//     if (timestamp is Timestamp) {
//       return timestamp.toDate(); // Converte il Timestamp in DateTime
//     }
//     // Se è una stringa in formato ISO 8601
//     else if (timestamp is String) {
//       return DateTime.parse(timestamp); // Converte la stringa in DateTime
//     }
//     // Se è già un DateTime
//     else if (timestamp is DateTime) {
//       return timestamp; // Restituisce direttamente il DateTime
//     }
//     // Se non è nessuno dei tipi previsti, lancia un'eccezione
//     else {
//       throw Exception("Invalid timestamp format: $timestamp");
//     }
//   }

//   @override
//   Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
// }
