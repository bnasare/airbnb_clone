import 'package:air_bnb_clone_/models/product_model.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: 300,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      product.imageUrls[index],
                      fit: BoxFit.fill,
                    );
                  },
                  autoplay: false,
                  itemCount: product.imageUrls.length,
                  pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        activeSize: 9,
                        size: 7,
                        color: Colors.white70,
                        activeColor: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  onPressed: null,
                  icon: Stack(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.black.withOpacity(0.5),
                        size: 30.0,
                      ),
                      const Icon(
                        IconlyLight.heart,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Text(product.location,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 19)),
              const Spacer(),
              Icon(Icons.star_outlined,
                  color: Theme.of(context).colorScheme.primary, size: 20),
              const SizedBox(width: 5),
              Text(product.rating.toString(),
                  style: const TextStyle(
                      fontSize: 19, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        Text(
          product.roomMate,
          style: TextStyle(
            letterSpacing: -1,
            color: Theme.of(context).colorScheme.tertiary,
            fontSize: 19,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            product.timeFrame,
            style: TextStyle(
              letterSpacing: -1,
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 19,
            ),
          ),
        ),
        Text(
          product.price,
          style: TextStyle(
            letterSpacing: -1,
            color: Theme.of(context).colorScheme.primary,
            fontSize: 19,
          ),
        ),
      ],
    );
  }
}
