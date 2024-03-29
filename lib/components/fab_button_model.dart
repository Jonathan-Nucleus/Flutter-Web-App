import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';

class FabButtonModel extends StatelessWidget {
  final void Function() onPressed;
  final Color background;
  final Color hover;
  final Widget child;
  final bool mini;
  final String tag;
  final double elevation;
  final double hoverElevation;
  const FabButtonModel({
    Key? key,
    required this.onPressed,
    required this.background,
    required this.hover,
    required this.child,
    required this.mini,
    required this.tag,
    required this.elevation,
    required this.hoverElevation
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        return FloatingActionButton(
          heroTag: tag,
          mini: mini,
          hoverColor: hover,
          backgroundColor: background,
          child: child,
          elevation: elevation,
          hoverElevation: hoverElevation,
          focusElevation: 0,
          highlightElevation: 0,
          onPressed: onPressed,
        );
      },
    );
  }
}
