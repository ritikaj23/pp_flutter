class Category {
  final String id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });

  // Convert a JSON object to a Category instance
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
    );
  }

  // Convert a Category instance to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}