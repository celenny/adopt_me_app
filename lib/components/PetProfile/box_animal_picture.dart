import 'package:flutter/material.dart';
import '../../themes/adopt_me_colors.dart';

class BoxAnimalPicture extends StatelessWidget {
  final String image;

  const BoxAnimalPicture({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: AdoptMeColors.white,
        image: DecorationImage(image: AssetImage(image)),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AdoptMeColors.grey,
        ),
      ),
    );
  }
}