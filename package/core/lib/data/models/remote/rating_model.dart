import 'package:core/data/models/remote/user_model.dart';
import 'package:core/domain/entities/rating.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_model.freezed.dart';
part 'rating_model.g.dart';

@freezed
class RatingModel with _$RatingModel {
  const RatingModel._();
  const factory RatingModel({
    required int review,
    required String comment,
    required UserModel user,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);

  Rating toEntity() =>
      Rating(review: review, comment: comment, user: user.toEntity());
}
