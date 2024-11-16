
class Book {
  final String name;
  final String id;
  final int? available;  // Nullable int
  final int? requested;  // Nullable int
  final List<Hadith> hadiths;

  // Constructor
  Book({
    required this.name,
    required this.id,
    this.available,  // Nullable parameter
    this.requested,  // Nullable parameter
    required this.hadiths,
  });

  // Factory method to create a Book from JSON
  factory Book.fromJson(Map<String, dynamic> json) {
    // Allow null values for available and requested
    return Book(
      name: json['name'],
      id: json['id'],
      available: json['available'],  // Nullable
      requested: json['requested'],  // Nullable
      hadiths: (json['hadiths'] as List?)?.map((i) => Hadith.fromJson(i)).toList() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'available': available,
      'requested': requested,
      'hadiths': hadiths.map((hadith) => hadith.toJson()).toList(),
    };
  }
}

class Hadith {
  final int? number;  // Nullable int
  final String arab;
  final String id;

  Hadith({
    this.number,  // Nullable parameter
    required this.arab,
    required this.id,
  });

  // Factory method to create a Hadith from JSON
  factory Hadith.fromJson(Map<String, dynamic> json) {
    return Hadith(
      number: json['number'],  // Nullable
      arab: json['arab'] ?? '',  // Handle null for arab
      id: json['id'] ?? '',      // Handle null for id
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'arab': arab,
      'id': id,
    };
  }
}


// class Book {
//   final String name;          // Name of the book (e.g., "HR. Bukhari")
//   final String id;            // Book ID (e.g., "bukhari")
//   final int available;        // Number of available Hadiths
//   final int requested;        // Number of requested Hadiths
//   final List<Hadith> hadiths; // List of Hadith objects
//
//   // Constructor
//   Book({
//     required this.name,
//     required this.id,
//     required this.available,
//     required this.requested,
//     required this.hadiths,
//   });
//
//   // Factory method to create a Book from JSON
//   factory Book.fromJson(Map<String, dynamic> json) {
//     List<Hadith> hadithList = [];
//
//     if (json['hadiths'] is List) {
//       hadithList = (json['hadiths'] as List).map((i) => Hadith.fromJson(i)).toList();
//     }
//
//     return Book(
//       name: json['name'],
//       id: json['id'],
//       available: json['available'],
//       requested: json['requested'],
//       hadiths: hadithList,
//     );
//   }
//
//   // Method to convert Book to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'id': id,
//       'available': available,
//       'requested': requested,
//       'hadiths': hadiths.map((hadith) => hadith.toJson()).toList(),
//     };
//   }
// }
//
// class Hadith {
//   final int number;   // Hadith number
//   final String arab;  // Arabic text of the Hadith
//   final String id;    // Translation of the Hadith
//
//   // Constructor
//   Hadith({
//     required this.number,
//     required this.arab,
//     required this.id,
//   });
//
//   // Factory method to create a Hadith from JSON
//   factory Hadith.fromJson(Map<String, dynamic> json) {
//     return Hadith(
//       number: json['number'],  // Parse the 'number' field
//       arab: json['arab'],      // Parse the 'arab' field
//       id: json['id'],          // Parse the 'id' (translation) field
//     );
//   }
//
//   // Method to convert Hadith to JSON (optional)
//   Map<String, dynamic> toJson() {
//     return {
//       'number': number,
//       'arab': arab,
//       'id': id,
//     };
//   }
// }