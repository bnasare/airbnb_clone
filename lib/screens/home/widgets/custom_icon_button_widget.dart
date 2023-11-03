import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final int selectedIndex;
  final VoidCallback onPressed;

  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Icon(
            icon,
            color: Colors.black,
            size: 35,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
        if (selectedIndex == index)
          Container(
            height: 3,
            width: 35,
            color: Colors.black,
          ),
      ],
    );
  }
}
