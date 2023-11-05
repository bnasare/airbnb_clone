import 'dart:developer';

import 'package:air_bnb_clone_/screens/explore/screens/explore_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SearchBarWithFilter extends StatelessWidget {
  const SearchBarWithFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 5),
      height: 60,
      margin: const EdgeInsets.only(top: 30, bottom: 21, left: 5, right: 5),
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
            CupertinoIcons.search,
            color: Colors.black,
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExploreScreen()));
            },
            child: Column(
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
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
            ),
            child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  log('ei');
                },
                icon: const Icon(
                  IconlyLight.filter,
                  color: Colors.black,
                )),
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
