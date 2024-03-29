import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/components/text_model.dart';
import 'package:oblio/widgets/authentication/checkbox.dart';

class RememberMe extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;
  const RememberMe({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AuthenticationCheckbox(
          value: value,
          onChanged: onChanged,
        ),
        TextModel(
            data: 'Remember me',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr)
      ],
    );
  }
}
