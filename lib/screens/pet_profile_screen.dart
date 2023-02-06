import 'package:flutter/material.dart';
//import '../components/PetProfile/pet_profile_footer.dart';
//import '../components/PetProfile/pet_profile_footer.dart';
import '../components/custom_app_bar.dart';
import '../components/pet_profile/pet_profile_app_bar.dart';
import '../components/pet_profile/pet_profile_body.dart';

class PetProfileScreen extends StatelessWidget {
  const PetProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        height: 110,
        child: PetProfileAppBar(),
      ),
      body: PetProfileBody(
        name: 'Akira',
        breed: 'Golden Retriver',
        age: '8 months old',
        localization: '2.5 kms away',
        isFemale: true,
        mainImagePath: 'assets/images/akira1.png',
        petProfileImagePath: 'assets/images/akira7.png',
      ),
      /*bottomSheet: Align(
        alignment: Alignment.bottomRight,
        child: PetProfileFooter(),
      ),*/
    );
  }
}
