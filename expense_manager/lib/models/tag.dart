class Tag {
  final String id;
  final String name;

  Tag({
    required this.id,
    required this.name,
  });

  // Convert a JSON object to a Tag instance
  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      id: json['id'],
      name: json['name'],
    );
  }

  // Convert a Tag instance to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}