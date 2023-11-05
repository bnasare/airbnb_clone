import 'package:air_bnb_clone_/models/destination_model.dart';
import 'package:air_bnb_clone_/screens/explore/widgets/destination_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_selection_container.dart';

class StaysWidget extends StatefulWidget {
  const StaysWidget({super.key});

  @override
  State<StaysWidget> createState() => _StaysWidgetState();
}

class _StaysWidgetState extends State<StaysWidget> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Where to?',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: color.primary),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 5),
                  child: SearchBar(
                    textStyle: MaterialStatePropertyAll(
                      TextStyle(
                          color: color.primary.withOpacity(0.6),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.fromLTRB(20, 10, 0, 10),
                    ),
                    hintText: 'Search destinations',
                    hintStyle: MaterialStatePropertyAll(
                      TextStyle(
                          color: color.primary.withOpacity(0.6),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    side: MaterialStatePropertyAll(
                      BorderSide(
                        color: color.primary.withOpacity(0.4),
                      ),
                    ),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.transparent),
                    leading: const Icon(CupertinoIcons.search),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    elevation: const MaterialStatePropertyAll(
                      0,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(top: 20, bottom: 0, left: 0),
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 15,
                    ),
                    itemCount: destinations.length,
                    itemBuilder: (BuildContext context, int index) {
                      return DestinationCard(
                          destinationModel: destinations[index]);
                    },
                  ),
                )
              ],
            ),
          ),
          for (int index = 1; index <= 2; index++)
            CustomSelectionContainer(
              labelText: index == 1 ? 'When' : 'Who',
              buttonText: index == 1 ? 'Any week' : 'Add guests',
              onPressed: index == 1 ? () {} : () {},
            ),
        ],
      ),
    );
  }
}
// ListView.separated(
          //   physics: const NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   scrollDirection: Axis.vertical,
          //   padding: const EdgeInsets.only(top: 20, bottom: 20),
          //   separatorBuilder: (BuildContext context, int index) =>
          //       const SizedBox(
          //     height: 25,
          //   ),
          //   itemCount: products.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return ProductCard(product: products[index]);
          //   },
          // )

      //     decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(30),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.5),
      //       spreadRadius: 2,
      //       blurRadius: 7,
      //       offset: const Offset(0, 2),
      //     ),
      //   ],
      // ),