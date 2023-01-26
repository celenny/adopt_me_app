import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../models/animal_profile.dart';
import '../../themes/adopt_me_colors.dart';
import 'box_animal_profile.dart';
import 'filter_item_widget.dart';

class AdoptMeBody extends StatelessWidget {
  final _listAnimalProfile = [
    AnimalProfile(
      name: 'Akira',
      breed: 'Golden Retriver',
      gender: 'Female',
      age: '8 months old',
      image: 'assets/images/akira.png',
      color: AdoptMeColors.akira,
      icon: MdiIcons.heart,
      isSelected: true,
      localization: '2.5 kms away',
    ),
    AnimalProfile(
      name: 'Chico',
      breed: 'Vira-lata',
      gender: 'Male',
      age: '7 months old',
      image: 'assets/images/chico.png',
      color: AdoptMeColors.chico,
      icon: MdiIcons.heartOutline,
      isSelected: false,
      localization: '3.4 kms away',
    ),
    AnimalProfile(
      name: 'Sushi',
      breed: 'Chihuahua',
      gender: 'Male',
      age: '10 months old',
      image: 'assets/images/sushi.png',
      color: AdoptMeColors.sushi,
      icon: MdiIcons.heartOutline,
      isSelected: false,
      localization: '2.0 kms away',
    ),
    AnimalProfile(
      name: 'Julia',
      breed: 'Pug',
      gender: 'Female',
      age: '6 months old',
      image: 'assets/images/julia.png',
      color: AdoptMeColors.julia,
      icon: MdiIcons.heartOutline,
      isSelected: false,
      localization: '1.5 kms away',
    ),
  ];

  AdoptMeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
            ),
            color: AdoptMeColors.lightGrey,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 10, bottom: 10),
            child: SizedBox(
              height: 70,
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate([
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 51,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: AdoptMeColors.white,
                          ),
                          child: const Icon(
                            FontAwesomeIcons.sliders,
                            color: AdoptMeColors.grey,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FilterItemWidget(
                          name: 'Dogs',
                          icon: MdiIcons.dog,
                          isSelected: true,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FilterItemWidget(
                          name: 'Cats',
                          icon: MdiIcons.cat,
                          isSelected: false,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FilterItemWidget(
                          name: 'Birds',
                          icon: MdiIcons.cat,
                          isSelected: false,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FilterItemWidget(
                          name: 'Rabbits',
                          icon: MdiIcons.rabbitVariant,
                          isSelected: false,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
              height: 680,
              decoration: const BoxDecoration(
                color: AdoptMeColors.lightGrey,
              ),
              child: ListView(
                children: _listAnimalProfile.map((lt) {
                  return BoxAnimalProfile(
                    name: lt.name,
                    breed: lt.breed,
                    gender: lt.gender,
                    age: lt.age,
                    image: lt.image,
                    color: lt.color,
                    icon: lt.icon,
                    isSelected: lt.isSelected,
                    localization: lt.localization,
                  );
                }).toList(),
              )),
        ),
      ],
    );
  }
}