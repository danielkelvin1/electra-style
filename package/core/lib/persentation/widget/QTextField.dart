import 'package:flutter/material.dart';

class QTextField extends StatefulWidget {
  final String? id;
  final String label;
  final String? value;
  final String? hint;
  final String? helper;
  final String? Function(String?)? validator;
  final bool obscure;
  final bool enabled;
  final int? maxLength;
  final Icon? prefixIcon;
  final AutovalidateMode? autovalidateMode;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  const QTextField({
    Key? key,
    required this.label,
    this.id,
    this.value,
    this.validator,
    this.hint,
    this.helper,
    this.maxLength,
    this.autovalidateMode,
    this.onChanged,
    this.onSubmitted,
    this.textInputAction,
    this.obscure = false,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<QTextField> createState() => _QTextFieldState();
}

class _QTextFieldState extends State<QTextField> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    textEditingController.text = widget.value ?? "";
    super.initState();
  }

  getValue() {
    return textEditingController.text;
  }

  setValue(value) {
    textEditingController.text = value;
  }

  resetValue() {
    textEditingController.text = "";
  }

  focus() {
    focusNode.requestFocus();
  }

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineBorder = OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      borderSide: BorderSide(
        width: 1.3,
        color: Theme.of(context).primaryColor,
      ),
    );
    return TextFormField(
      enabled: widget.enabled,
      controller: textEditingController,
      focusNode: focusNode,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      maxLength: widget.maxLength,
      autovalidateMode: widget.autovalidateMode,
      style: Theme.of(context).textTheme.bodyMedium,
      obscureText: widget.obscure,
      decoration: InputDecoration(
        enabledBorder: outlineBorder,
        focusedBorder: outlineBorder,
        focusedErrorBorder: outlineBorder.copyWith(
          borderSide: const BorderSide(
            width: 1.3,
            color: Colors.red,
          ),
        ),
        errorBorder: outlineBorder.copyWith(
          borderSide: const BorderSide(
            width: 1.3,
            color: Colors.red,
          ),
        ),
        border: outlineBorder,
        errorMaxLines: 2,
        labelText: widget.label,
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).primaryColor,
            ),
        contentPadding: const EdgeInsets.all(0),
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        helperText: widget.helper,
        hintText: widget.hint,
      ),
      onChanged: (value) {
        if (widget.onChanged != null) widget.onChanged!(value);
      },
      onFieldSubmitted: (value) {
        if (widget.onSubmitted != null) widget.onSubmitted!(value);
      },
    );
  }
}
