import 'package:equatable/equatable.dart';

class City extends Equatable {
  final int id;
  final String city;

  const City({
    required this.id,
    required this.city,
  });

  @override
  List<Object?> get props => [
        id,
        city,
      ];
}
