import 'package:flutter/material.dart';
import '../../themes/adopt_me_colors.dart';

class FilterItemWidget extends StatelessWidget {
  final String name;
  final IconData icon;
  final bool isSelected;

  const FilterItemWidget({
    Key? key,
    required this.name,
    required this.icon,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: isSelected ? AdoptMeColors.coralRed : AdoptMeColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 27,
            color: isSelected ? AdoptMeColors.white : AdoptMeColors.grey,
          ),
          const SizedBox(width: 12),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? AdoptMeColors.white : AdoptMeColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
