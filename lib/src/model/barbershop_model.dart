class BarbershopModel {
  final int id;
  final String name;
  final String email;
  final List<String> openinDays;
  final List<int> openingHours;

  BarbershopModel({
    required this.id,
    required this.name,
    required this.email,
    required this.openinDays,
    required this.openingHours,
  });
  factory BarbershopModel.fromMap(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'name': String name,
        'email': String email,
        'opening_days': final List openinDays,
        'opening_hours': final List openingHours,
      } =>
        BarbershopModel(
          id: id,
          name: name,
          email: email,
          openinDays: openinDays.cast<String>(),
          openingHours: openingHours.cast<int>(),
        ),
      _ => throw ArgumentError('Invalid json')
    };
  }
}
