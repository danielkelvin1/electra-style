import 'dart:developer';

import 'package:auth/domain/usecase/register_user.dart';
import 'package:core/data/models/remote/register_request.dart';
import 'package:core/domain/entities/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUSer _registerUser;
  RegisterBloc(this._registerUser) : super(const _Initial()) {
    on<_Register>((event, emit) async {
      emit(const _Loading());
      final result = await _registerUser.execute(event.register);
      result.fold(
        (error) {
          emit(_Error(error.message));
        },
        (user) {
          emit(_Loaded(user));
        },
      );
    });
  }
}
