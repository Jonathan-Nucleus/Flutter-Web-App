import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/components/secondary_button_model.dart';

class PreviousButton extends StatelessWidget {
  final void Function()? onPressed;
  const PreviousButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SecondaryButtonModel(
      height: 40,
      width: 125,
      padding: EdgeInsets.all(0),
      name: 'PREVIOUS',
      textStyle: oblioTheme.textTheme.button!,
      style: oblioTheme.textButtonTheme.style!,
      onPressed: onPressed,
    );
  }
}
