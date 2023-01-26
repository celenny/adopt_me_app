import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../themes/adopt_me_colors.dart';

class AdoptMeAppBar extends StatelessWidget {
  const AdoptMeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Icon(
          FontAwesomeIcons.bars,
          color: AdoptMeColors.blueGrey,
          size: 29.0,
        ),
        Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            children: const <Widget>[
              Text('Location',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AdoptMeColors.grey,
                  )),
              SizedBox(height: 4.0),
              Text(
                'Cameron St., Boston',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AdoptMeColors.darkGrey,
                ),
              ),
            ],
          ),
        ),
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/patricia.png'),
          radius: 24.0,
        ),
      ],
    );
  }
}
