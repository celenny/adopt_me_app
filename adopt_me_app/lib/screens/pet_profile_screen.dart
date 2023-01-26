import 'package:flutter/material.dart';
import '../components/PetProfile/pet_profile_app_bar.dart';
import '../components/PetProfile/pet_profile_body.dart';
import '../components/PetProfile/pet_profile_footer.dart';
import '../components/custom_app_bar.dart';

class PetProfileScreen extends StatelessWidget {
  const PetProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        height: 110,
        child: PetProfileAppBar(),
      ),
      body: PetProfileBody(
        name: 'Akira',
        breed: 'Golden Retriver',
        age: '8 months old',
        isFemale: true,
        mainImagePath: 'assets/images/akira2.png',
        petProfileImagePath: 'assets/images/akira1.png',
      ),
      bottomNavigationBar: PetProfileFooter(),
    );
  }
}
