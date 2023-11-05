import 'package:flutter/material.dart';

class CustomBottomAppBarButtons extends StatelessWidget {
  final VoidCallback onClearAllPressed;
  final VoidCallback onSearchPressed;

  const CustomBottomAppBarButtons({
    super.key,
    required this.onClearAllPressed,
    required this.onSearchPressed,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return BottomAppBar(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
              ),
              onPressed: onClearAllPressed,
              child: Text(
                'Clear all',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      color.primary, // Replace with your desired color
                  decorationThickness: 2,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: onSearchPressed,
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  color.secondary.withOpacity(0.9),
                ),
                fixedSize: MaterialStateProperty.all(
                  const Size.fromHeight(50),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: color.background,
                  ),
                  const SizedBox(width: 7),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: color.background,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
