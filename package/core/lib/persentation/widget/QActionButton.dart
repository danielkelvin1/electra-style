import 'package:flutter/material.dart';

class QActionButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;

  const QActionButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
          disabledBackgroundColor:
              Theme.of(context).primaryColor.withOpacity(0.5),
        ),
        onPressed: onPressed,
        child: onPressed != null
            ? Text(
                label,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
              )
            : const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
                strokeCap: StrokeCap.round,
              ),
      ),
    );
  }
}
