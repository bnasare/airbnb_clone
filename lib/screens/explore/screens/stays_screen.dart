import 'package:flutter/material.dart';

import '../widgets/custom_selection_container.dart';

class StaysScreen extends StatefulWidget {
  const StaysScreen({super.key});

  @override
  State<StaysScreen> createState() => _StaysScreenState();
}

class _StaysScreenState extends State<StaysScreen> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Column(
        children: [
          Container(
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