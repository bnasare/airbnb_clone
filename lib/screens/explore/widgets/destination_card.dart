import 'package:air_bnb_clone_/models/destination_model.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final DestinationModel destinationModel;
  const DestinationCard({super.key, required this.destinationModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SizedBox(
              height: 100,
              width: 100,
              child: FancyShimmerImage(
                imageUrl: destinationModel.imageUrl,
                boxFit: BoxFit.fill,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: FittedBox(
            child: Text(
              destinationModel.destination,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}
