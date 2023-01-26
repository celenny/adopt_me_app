
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../themes/adopt_me_colors.dart';

class PetProfileFooter extends StatelessWidget {
  const PetProfileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 60,
      decoration: const BoxDecoration(
        color: AdoptMeColors.coralRed,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            30,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 50,
        ),
        child: Row(children: const [
          Icon(
            MdiIcons.paw,
            size: 30,
            color: AdoptMeColors.white,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'ADOPT ME',
            style: TextStyle(
              fontSize: 22,
              color: AdoptMeColors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ]),
      ),
    );
  }
}
