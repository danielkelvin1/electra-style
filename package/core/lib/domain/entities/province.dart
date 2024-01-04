// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Province extends Equatable {
  final int id;
  final String province;
  const Province({
    required this.id,
    required this.province,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        province,
      ];
}
