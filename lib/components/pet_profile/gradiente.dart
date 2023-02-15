 import 'package:flutter/material.dart';

Container gradient() {
    return Container(
      height: 23,
      width: 80,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color.fromARGB(0, 254, 255, 255),
            Color.fromARGB(0, 255, 255, 255),
            Color.fromARGB(255, 255, 254, 254),
            Color.fromARGB(255, 255, 254, 254),
            //Color.fromARGB(254, 250, 243, 243),
          ],
        ),
      ),
    );
  }
  