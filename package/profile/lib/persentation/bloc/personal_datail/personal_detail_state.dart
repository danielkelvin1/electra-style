part of 'personal_detail_bloc.dart';

@freezed
class PersonalDetailState with _$PersonalDetailState {
  factory PersonalDetailState.initial() = _Initial;
  factory PersonalDetailState.loading() = _Loading;
  factory PersonalDetailState.secondLoading() = _SecondLoading;
  factory PersonalDetailState.loaded(User user) = _Loaded;
  factory PersonalDetailState.error(String message) = _Error;
}
