class Food {
  final String food_code;
  final String food_description;

  const Food({
    required this.food_code,
    required this.food_description,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      food_code: json['food_code'].toString(),
      food_description: json['food_description'].toString(),
    );
  }
}
