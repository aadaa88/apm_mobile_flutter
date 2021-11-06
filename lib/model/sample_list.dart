class Sample {
  final int id;
  final String name;
  final String subject;
  final int score;
  final String gender;
  final String address;
  final String phone;

  Sample({
    required this.id,
    required this.name,
    required this.subject,
    required this.score,
    required this.gender,
    required this.address,
    required this.phone,
  });

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(
      id: json['stdId'],
      name: json['stdName'],
      subject: json['stdSubject'],
      score: json['stdScore'],
      gender: json['stdGender'],
      address: json['stdAddress'],
      phone: json['stdPhone'],
    );
  }
}
