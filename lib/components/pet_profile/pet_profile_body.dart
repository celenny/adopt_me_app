import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../themes/adopt_me_colors.dart';
import 'animal_main_picture.dart';
import 'box_animal_picture.dart';
import 'gradiente.dart';
import 'pet_profile_footer.dart';

class PetProfileBody extends StatelessWidget {
  final _imageList = [
    'assets/images/akira2.png',
    'assets/images/akira7.png',
    'assets/images/akira5.png',
    'assets/images/akira4.png',
    'assets/images/akira6.png',
    'assets/images/akira3.png',
  ];

  final String name;
  final String breed;
  final String age;
  final String localization;
  final bool isFemale;
  final String mainImagePath;
  final String petProfileImagePath;

  PetProfileBody({
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
      child: ListView(
        children: [
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
            padding:
                const EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
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
          //TODO: LISTA COMPONENTIZAR POR CAUSA DO GRADIENTE E DEIXAR DINAMICO LISTVIEW.BUILDER OU SEPARETED
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 10,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 240,
                    width: 80,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: _imageList.length,
                      itemBuilder: (context, index) {
                        return BoxAnimalPicture(
                          image: _imageList[index],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 225),
                    child: gradient(),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: AnimalMainPicture(mainImagePath: mainImagePath),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              padding: const EdgeInsets.all(17),
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
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum Many desktop publishing packages and web page editors now use.''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: AdoptMeColors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 80),
            child: Align(
              alignment: Alignment.bottomRight,
              child: PetProfileFooter(),
            ),
          ),
        ],
      ),
    );
  }
}
