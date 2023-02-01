import 'package:adopt_me_app/components/PetProfile/pet_profile_footer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../themes/adopt_me_colors.dart';
import 'box_animal_picture.dart';

class PetProfileBody extends StatelessWidget {
  final String name;
  final String breed;
  final String age;
  final String localization;
  final bool isFemale;
  final String mainImagePath;
  final String petProfileImagePath;

  const PetProfileBody({
    Key? key,
    required this.name,
    required this.breed,
    required this.age,
    required this.localization,
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
                    children: [
                      Text(
                        breed,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AdoptMeColors.black,
                        ),
                      ),
                      Text(
                        age,
                        style: const TextStyle(
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
                    children: [
                      const Icon(
                        FontAwesomeIcons.locationDot,
                        color: AdoptMeColors.coralRed,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        localization,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AdoptMeColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  //TODO: LISTA COMPONENTIZAR POR CAUSA DO GRADIENTE E DEIXAR DINAMICO LISTVIEW.BUILDER OU SEPARETED
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
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
                    Expanded(
                      child: Stack(
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
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        '''
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsumMany desktop publishing packages.''',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: AdoptMeColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: PetProfileFooter(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
