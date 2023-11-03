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
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, top: 10),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          if (selectedIndex == index)
            Flexible(
              child: Container(
                height: 3,
                width: 40,
                color: Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
