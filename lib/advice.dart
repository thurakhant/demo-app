class Advice {
  final String advice;
  final int id;

  Advice({required this.advice, required this.id});

  factory Advice.fromJson(Map<String, dynamic> json) {
    return Advice(advice: json['slip']['advice'], id: json['slip']['id']);
  }
}
