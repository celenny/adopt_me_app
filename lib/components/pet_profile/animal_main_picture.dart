import 'package:flutter/material.dart';

import '../../themes/adopt_me_colors.dart';

class AnimalMainPicture extends StatelessWidget {
  const AnimalMainPicture({
    Key? key,
    required this.mainImagePath,
  }) : super(key: key);

  final String mainImagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 290,
          width: 280,
          decoration: BoxDecoration(
            color: AdoptMeColors.akira,
            borderRadius: BorderRadius.circular(150),
          ),
        ),
        Positioned(
          left: -80,
          //right: -100,
          child: Container(
            height: 290,
            width: 400,
            alignment: Alignment.centerRight,
            child: Image.asset(mainImagePath),
          ),
        ),
      ],
    );
  }
}
