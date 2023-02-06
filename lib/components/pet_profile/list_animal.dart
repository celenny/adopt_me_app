import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'box_animal_picture.dart';

class AnimalList extends StatelessWidget {
  final _imageList = [
    'assets/images/akira2.png',
    'assets/images/akira3.png',
    'assets/images/akira4.png',
    'assets/images/akira5.png',
    'assets/images/akira6.png',
    'assets/images/akira7.png',
  ];
  AnimalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: _imageList.length,
          itemBuilder: (context, index) {
            return BoxAnimalPicture(
              image: _imageList[index],
            );
          },
        ),
      ],
    );
  }
}
