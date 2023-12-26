import 'package:core/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

class Rating extends Equatable {
  final int review;
  final String comment;
  final User user;

  const Rating({
    required this.review,
    required this.comment,
    required this.user,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        review,
        comment,
        user,
      ];
}
