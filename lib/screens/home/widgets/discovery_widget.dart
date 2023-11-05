import 'package:air_bnb_clone_/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/product_model.dart';

class DeliveryWidget extends StatefulWidget {
  const DeliveryWidget({super.key});

  @override
  State<DeliveryWidget> createState() => _DeliveryWidgetState();
}

class _DeliveryWidgetState extends State<DeliveryWidget> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: color.tertiary.withOpacity(0.3),
              ),
            ),
            width: double.infinity,
            height: 94,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Display total price',
                        style: TextStyle(
                          color: color.primary,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          'Includes all fees; before taxes',
                          style: TextStyle(
                            color: color.tertiary,
                            fontSize: 18,
                            letterSpacing: -1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: CupertinoSwitch(
                      value: _isSwitched,
                      onChanged: (value) {
                        setState(() {
                          _isSwitched = value;
                        });
                      },
                      activeColor: color.primary,
                      trackColor: color.tertiary.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              height: 25,
            ),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductCard(product: products[index]);
            },
          )
        ],
      ),
    );
  }
}
