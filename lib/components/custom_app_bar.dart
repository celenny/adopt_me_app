
import 'package:flutter/material.dart';
import '../themes/adopt_me_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget child;

  const CustomAppBar({
    Key? key,
    required this.child,
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: AdoptMeColors.white,
      alignment: Alignment.center,
      child: child,
    );
  }
}
