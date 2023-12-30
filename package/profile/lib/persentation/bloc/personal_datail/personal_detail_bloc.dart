import 'package:core/data/models/remote/user_model.dart';
import 'package:core/domain/entities/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kiwi/kiwi.dart';
import 'package:profile/domain/usecase/get_user.dart';

part 'personal_detail_event.dart';
part 'personal_detail_state.dart';
part 'personal_detail_bloc.freezed.dart';

class PersonalDetailBloc
    extends Bloc<PersonalDetailEvent, PersonalDetailState> {
  PersonalDetailBloc() : super(_Initial()) {
    on<_GetUser>((event, emit) async {
      final getUser = KiwiContainer().resolve<GetUser>('get_user');
      emit(_Loading());
      final result = await getUser.execute();
      result.fold(
        (error) => emit(_Error(error.message)),
        (user) => emit(
          _Loaded(
            user,
          ),
        ),
      );
    });

    on<_ChangePicture>((event, emit) {
      emit(_SecondLoading());
    });

    on<_UpdateUser>((event, emit) {
      emit(_SecondLoading());
    });
  }
}
