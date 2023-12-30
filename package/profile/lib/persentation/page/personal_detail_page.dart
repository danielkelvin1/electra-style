import 'package:core/persentation/widget/QActionButton.dart';
import 'package:core/persentation/widget/QDropDownButton.dart';
import 'package:core/persentation/widget/QTextField.dart';
import 'package:core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:go_router/go_router.dart';

final List<String> genderList = ['male', 'female'];

class PersonalDetailPage extends StatefulWidget {
  const PersonalDetailPage({super.key});
  static String routeName = "/personal-detail";

  @override
  State<PersonalDetailPage> createState() => _PersonalDetailPageState();
}

class _PersonalDetailPageState extends State<PersonalDetailPage> {
  String _genderDropDownValue = genderList.first;
  final ImagePicker _picker = ImagePicker();
  ImageSource imageSource = ImageSource.camera;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              Center(child: _buildProfileUploadImage(context)),
              const SizedBox(
                height: 40.0,
              ),
              QTextField(
                  prefixIcon: Icon(
                    Icons.alternate_email_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  label: 'Username'),
              const SizedBox(
                height: 20.0,
              ),
              QTextField(
                label: 'Name',
                prefixIcon: Icon(
                  Icons.alternate_email_outlined,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QTextField(
                label: 'New Password',
                prefixIcon: Icon(
                  Icons.vpn_key_outlined,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QTextField(
                label: 'Confirm Password',
                prefixIcon: Icon(
                  Icons.vpn_key_outlined,
                  color: Theme.of(context).primaryColor,
                ),
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
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileUploadImage(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(imageDefault),
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
    if (image != null) {}
    context.pop();
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
                  Text(
                    'Camera',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
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
                  Text(
                    'Gallery',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
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
}
