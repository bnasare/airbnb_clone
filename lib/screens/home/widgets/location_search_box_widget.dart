import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 63,
      margin: const EdgeInsets.only(top: 40, bottom: 33, left: 5, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(
            IconlyLight.search,
            color: Colors.black,
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Where to?',
                style: TextStyle(
                  fontSize: 17,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 0),
              FittedBox(
                child: Text(
                  'Anywhere . Any week . Add guests',
                  maxLines: 1,
                  style: TextStyle(
                    letterSpacing: -1.2,
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: const Icon(
              IconlyLight.filter,
              color: Colors.black,
            ),
          ),
          // IconButton.outlined(
          //   style: ButtonStyle(
          //     side: MaterialStateProperty.all(
          //         const BorderSide(color: Colors.black)),
          //   ),
          //   onPressed: () {},
          //   icon: const Icon(
          //     IconlyLight.filter,
          //     color: Colors.black,
          //   ),
          // ),
        ],
      ),
    );
  }
}
