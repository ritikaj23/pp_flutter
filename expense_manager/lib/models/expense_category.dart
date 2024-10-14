class ExpenseCategory {
  final String id;
  final String name;
  final bool isDefault;

  ExpenseCategory({
    required this.id,
    required this.name,
    this.isDefault = false,
  });

  // Convert a JSON object to an ExpenseCategory instance
  factory ExpenseCategory.fromJson(Map<String, dynamic> json) {
    return ExpenseCategory(
      id: json['id'],
      name: json['name'],
      isDefault: json['isDefault'] ?? false, // Provide a default value if 'isDefault' is missing
    );
  }

  // Convert an ExpenseCategory instance to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isDefault': isDefault,
    };
  }
}