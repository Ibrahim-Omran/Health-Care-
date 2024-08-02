import 'package:flutter/material.dart';
import 'package:health_care_app/core/helper/spacing.dart';
import 'package:health_care_app/core/theme/colors.dart';

import '../../../../core/theme/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At less 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At less 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('At less 1 special characters', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('At less 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At less 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,

          ),
        ),

      ],
    );
  }
}
