import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../themes/adopt_me_colors.dart';
import 'box_animal_picture.dart';

class PetProfileBody extends StatelessWidget {
  final String name;
  final String breed;
  final String age;
  final bool isFemale;
  final String mainImagePath;
  final String petProfileImagePath;

  const PetProfileBody({
    Key? key,
    required this.name,
    required this.breed,
    required this.age,
    required this.isFemale,
    required this.mainImagePath,
    required this.petProfileImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AdoptMeColors.white,
      height: MediaQuery.of(context).size.height * 0.9,
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: AdoptMeColors.black,
                        ),
                      ),
                      Icon(
                        isFemale ? MdiIcons.genderFemale : MdiIcons.genderMale,
                        color: AdoptMeColors.grey,
                        size: 45,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, left: 20, right: 20, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Golden Retriver',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AdoptMeColors.black,
                        ),
                      ),
                      Text(
                        '8 months old',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AdoptMeColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    top: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        FontAwesomeIcons.locationDot,
                        color: AdoptMeColors.coralRed,
                        size: 16,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        '2.5 kms away',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AdoptMeColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            BoxAnimalPicture(image: petProfileImagePath),
                            const SizedBox(
                              height: 10,
                            ),
                            BoxAnimalPicture(image: petProfileImagePath),
                            const SizedBox(
                              height: 10,
                            ),
                            BoxAnimalPicture(image: petProfileImagePath),
                            const SizedBox(
                              height: 10,
                            ),
                            BoxAnimalPicture(image: petProfileImagePath),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                            color: AdoptMeColors.akira,
                            borderRadius: BorderRadius.circular(150),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            mainImagePath,
                            height: 370,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        'About',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
