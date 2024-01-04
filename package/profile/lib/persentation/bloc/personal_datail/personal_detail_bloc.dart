import 'package:core/data/models/remote/upload_image_picture_model.dart';
import 'package:core/data/models/remote/user_model.dart';
import 'package:core/domain/entities/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kiwi/kiwi.dart';
import 'package:profile/domain/usecase/get_user.dart';
import 'package:profile/domain/usecase/update_picture_user.dart';
import 'package:profile/domain/usecase/update_user.dart';

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

    on<_ChangePicture>((event, emit) async {
      User user;
      if (state is _Loaded) {
        user = (state as _Loaded).user;
      } else {
        user = (state as _SecondLoaded).user;
      }
      final changePictureUser =
          KiwiContainer().resolve<UpdatePictureUser>('update_user_picture');
      emit(_SecondLoading());
      final result = await changePictureUser.execute(event.picture);
      result.fold((error) => emit(_Error(error.message)), (picture) {
        final updateUser = user.copyWith(imageUrl: picture.path);
        emit(_SecondLoaded(updateUser));
      });
    });

    on<_UpdateUser>((event, emit) async {
      final updateUser = KiwiContainer().resolve<UpdateUser>('update_user');
      emit(_SecondLoading());
      final result = await updateUser.execute(event.user);
      result.fold(
        (error) => emit(_Error(error.message)),
        (user) => emit(
          _SecondLoaded(user),
        ),
      );
    });
  }
}
