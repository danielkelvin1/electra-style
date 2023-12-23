// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auth/domain/usecase/login_user.dart';
import 'package:core/domain/entities/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUser _loginUser;
  LoginBloc(
    this._loginUser,
  ) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final result = await _loginUser.execute(event.email, event.password);

      result.fold(
        (error) => emit(_Error(error.message)),
        (user) => emit(_Loaded(user)),
      );
    });

    on<_SetInitial>((event, emit) {
      emit(const _Initial());
    });
  }
}
