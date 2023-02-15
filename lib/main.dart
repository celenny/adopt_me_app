import 'package:flutter/material.dart';
import 'screens/adopt_me_screen.dart';
import 'themes/adopt_me_theme.dart';

void main() {
  runApp(const AdoptMe());
}

class AdoptMe extends StatelessWidget {
  const AdoptMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AdoptMe',
      debugShowCheckedModeBanner: false,
      theme: adoptMeTheme,
      home: const AdoptMeScreen(),
      //home: const PetProfileScreen(),
      //home: AnimalList(),
    );
  }
}
