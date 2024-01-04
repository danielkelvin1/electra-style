import 'package:core/data/models/remote/upload_image_picture_model.dart';
import 'package:core/data/models/remote/user_model.dart';
import 'package:core/domain/entities/user.dart';
import 'package:core/persentation/widget/QActionButton.dart';
import 'package:core/persentation/widget/QDropDownButton.dart';
import 'package:core/persentation/widget/QTextField.dart';
import 'package:core/utils/constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/persentation/bloc/personal_datail/personal_detail_bloc.dart';
import 'package:core/utils/image_url_remove_extension.dart';
import 'package:core/utils/form_validation_mixin.dart';
import 'package:quickalert/quickalert.dart';

final List<String> genderList = ['male', 'female'];

class PersonalDetailPage extends StatefulWidget {
  const PersonalDetailPage({super.key});
  static String routeName = "/personal-detail";

  @override
  State<PersonalDetailPage> createState() => _PersonalDetailPageState();
}

class _PersonalDetailPageState extends State<PersonalDetailPage>
    with FormValidationMixin {
  String _genderDropDownValue = genderList.first;
  final ImagePicker _picker = ImagePicker();
  ImageSource imageSource = ImageSource.camera;
  String _username = "";
  String _name = "";
  String _password = "";
  String _oldPassword = "";
  String _confirmPassword = "";
  final _formKey = GlobalKey<FormState>();
  final _formKeyOldPassword = GlobalKey<FormState>();
  bool _showNewPassword = false;
  bool _showConfirmPassword = false;
  bool _showOldPassword = false;

  @override
  void initState() {
    super.initState();
    context.read<PersonalDetailBloc>().add(PersonalDetailEvent.getUser());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: BlocConsumer<PersonalDetailBloc, PersonalDetailState>(
              listener: (context, state) {
                state.maybeWhen(
                  loaded: (user) {
                    _genderDropDownValue = user.gender;
                    _username = user.username;
                    _name = user.name;
                  },
                  secondLoaded: (user) {
                    _genderDropDownValue = user.gender;
                    _username = user.username;
                    _name = user.name;
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  secondLoading: () {
                    QuickAlert.show(
                      barrierDismissible: false,
                      context: context,
                      type: QuickAlertType.loading,
                    );
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (user) => _buildBody(user),
                  secondLoaded: (user) => _buildBody(user),
                  orElse: () => const SizedBox(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(User user) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Center(
            child: _buildProfileUploadImage(context, user.imageUrl),
          ),
          const SizedBox(
            height: 40.0,
          ),
          QTextField(
            value: _username,
            validator: emptyValidation,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            prefixIcon: Icon(
              Icons.alternate_email_outlined,
              color: Theme.of(context).primaryColor,
            ),
            onChanged: (value) {
              _username = value;
            },
            label: 'Username',
          ),
          const SizedBox(
            height: 20.0,
          ),
          QTextField(
            value: _name,
            label: 'Name',
            validator: emptyValidation,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            prefixIcon: Icon(
              Icons.alternate_email_outlined,
              color: Theme.of(context).primaryColor,
            ),
            onChanged: (value) {
              _name = value;
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          QTextField(
            label: 'New Password',
            validator: passwordValidation,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscure: !_showNewPassword,
            prefixIcon: Icon(
              Icons.vpn_key_outlined,
              color: Theme.of(context).primaryColor,
            ),
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _showNewPassword = !_showNewPassword;
                  });
                },
                child: Icon(
                  !_showNewPassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Theme.of(context).primaryColor,
                )),
            onChanged: (value) {
              _password = value;
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          QTextField(
            label: 'Confirm Password',
            validator: (value) {
              return confirmPasswordValidation(value, _password);
            },
            obscure: !_showConfirmPassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _showConfirmPassword = !_showConfirmPassword;
                });
              },
              child: Icon(
                !_showConfirmPassword
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: Theme.of(context).primaryColor,
              ),
            ),
            prefixIcon: Icon(
              Icons.vpn_key_outlined,
              color: Theme.of(context).primaryColor,
            ),
            onChanged: (value) {
              _confirmPassword = value;
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          //Gender
          QDropDownButton(
            value: _genderDropDownValue,
            prefixIcon: Icon(
              _genderDropDownValue == 'male' ? Icons.male : Icons.female,
              color: Theme.of(context).primaryColor,
            ),
            items: genderList
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                _genderDropDownValue = value!;
              });
            },
          ),
          const SizedBox(
            height: 40.0,
          ),
          QActionButton(
            label: 'Save',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _confirmChangeDataUser(context);
              }
            },
          )
        ],
      ),
    );
  }

  Widget _buildProfileUploadImage(BuildContext context, String? imageUserUrl) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(imageUserUrl != null
                  ? "$imageUrl${imageUserUrl.imageUrlRemovePublic()}"
                  : imageDefault),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: -5,
          right: -5,
          child: GestureDetector(
            onTap: () {
              _selectSourceImage(context);
            },
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(1, 1),
                  ),
                  BoxShadow(
                    color: Colors.white,
                  )
                ],
              ),
              child: Icon(
                Icons.edit_outlined,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future _getPicture() async {
    final XFile? image = await _picker.pickImage(source: imageSource);
    if (image != null) {
      MultipartFile picture =
          await MultipartFile.fromFile(image.path, filename: image.name);
      UploadImagePictureModel uploadPictureModel =
          UploadImagePictureModel(picture: picture);
      context.read<PersonalDetailBloc>().add(
            PersonalDetailEvent.changePicture(uploadPictureModel),
          );
    }
  }

  void _selectSourceImage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                imageSource = ImageSource.camera;
                _getPicture();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.camera,
                    size: 32,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Text(
                      'Camera',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            GestureDetector(
              onTap: () {
                imageSource = ImageSource.gallery;
                _getPicture();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.image,
                    size: 32,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Text(
                      'Gallery',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmChangeDataUser(
    BuildContext context,
  ) {
    showModalBottomSheet(
      isDismissible: false,
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          left: 25,
          right: 25,
          bottom: MediaQuery.of(context).viewInsets.bottom + 36,
          top: 36,
        ),
        child: Form(
          key: _formKeyOldPassword,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              QTextField(
                label: 'Old Password',
                validator: passwordValidation,
                obscure: !_showOldPassword,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _showOldPassword = !_showOldPassword;
                    });
                  },
                  child: Icon(
                    !_showOldPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  _oldPassword = value;
                },
                prefixIcon: Icon(
                  Icons.vpn_key_outlined,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              QActionButton(
                label: 'Confirm',
                onPressed: () {
                  if (_formKeyOldPassword.currentState!.validate()) {
                    UserModel user = UserModel(
                      name: _name,
                      username: _username,
                      imageUrl: imageUrl,
                      gender: _genderDropDownValue,
                      password: _password,
                      oldPassword: _oldPassword,
                    );

                    context.read<PersonalDetailBloc>().add(
                          PersonalDetailEvent.updateUser(user),
                        );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
