// Demo List
import 'package:flutter/material.dart';

class AnimalProfile {
  final String name;
  final String breed;
  final String gender;
  final String age;
  final String image;
  final Color color;
  final IconData icon;
  final bool isSelected;
  final String localization;

  AnimalProfile(
      {required this.name,
      required this.breed,
      required this.gender,
      required this.age,
      required this.image,
      required this.color,
      required this.icon,
      required this.isSelected,
      required this.localization});
}
