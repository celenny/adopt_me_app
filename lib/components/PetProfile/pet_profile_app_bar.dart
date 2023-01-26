import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../themes/adopt_me_colors.dart';

class PetProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const PetProfileAppBar({
    Key? key,
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            //MdiIcons.angleRight,
            FontAwesomeIcons.angleLeft,
            size: 45,
            color: AdoptMeColors.blueGrey,
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: AdoptMeColors.lightPink,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              MdiIcons.heart,
              size: 29,
              color: AdoptMeColors.coralRed,
            ),
          ),
        ],
      ),
    );
  }
}
