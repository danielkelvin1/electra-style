import 'package:core/domain/entities/province.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_model.freezed.dart';
part 'province_model.g.dart';

@freezed
class ProvinceModel with _$ProvinceModel {
  const ProvinceModel._();
  const factory ProvinceModel({
    required String id,
    required String province,
  }) = _ProvinceModel;

  factory ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinceModelFromJson(json);

  Province toEntity() => Province(
        id: int.parse(id),
        province: province,
      );
}
