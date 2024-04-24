import 'package:flutter/material.dart';
import 'package:sample_1/src/core/constants/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
        super.key,
        required this.title,
        required this.onPressed,
      }
);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
