import 'package:flutter/material.dart';
import '../components/AdoptMe/adopt_me_app_bar.dart';
import '../components/AdoptMe/adopt_me_body.dart';
import '../components/custom_app_bar.dart';

class AdoptMeScreen extends StatelessWidget {
  const AdoptMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        height: 130,
        child: SafeArea(
          child: AdoptMeAppBar(),
        ),
      ),
      body: AdoptMeBody(),
    );
  }
}
