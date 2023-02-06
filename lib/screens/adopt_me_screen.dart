import 'package:adopt_me_app/components/adopt_me/adopt_me_body.dart';
import 'package:flutter/material.dart';

import '../components/adopt_me/adopt_me_app_bar.dart';
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
