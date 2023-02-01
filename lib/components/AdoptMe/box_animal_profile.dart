import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../themes/adopt_me_colors.dart';

class BoxAnimalProfile extends StatelessWidget {
  final String name;
  final String breed;
  final String gender;
  final String age;
  final String image;
  final Color color;
  final IconData icon;
  final bool isSelected;
  final String localization;

  const BoxAnimalProfile({
    Key? key,
    required this.name,
    required this.breed,
    required this.gender,
    required this.age,
    required this.image,
    required this.color,
    required this.icon,
    required this.isSelected,
    required this.localization,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: 375,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AdoptMeColors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: color,
              image: DecorationImage(image: AssetImage(image)),
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Icon(
                    icon,
                    color: isSelected
                        ? AdoptMeColors.coralRed
                        : AdoptMeColors.grey,
                    size: 27,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    breed,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(
                      text: gender,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AdoptMeColors.grey,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text: ', ',
                        ),
                        TextSpan(
                          text: age,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.locationDot,
                    color: AdoptMeColors.coralRed,
                    size: 17,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    localization,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 14,),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
