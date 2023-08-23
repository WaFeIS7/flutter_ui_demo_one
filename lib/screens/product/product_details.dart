import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/api/model/product.dart';
import 'package:flutter_demo_1/widgets_helpers/text_style.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Image.network(
                    product.image,
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      product.title,
                      style: style(
                          size: 18, color: const Color.fromARGB(255, 1, 51, 3)),
                    )),
                  ],
                ),
              ),
              const Divider(
                color: Colors.greenAccent,
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category: ${StringUtils.capitalize(product.category)}',
                      style: style(),
                    ),
                    RatingBarIndicator(
                      rating: product.rating.rate,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 246, 27, 2),
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
              ),
              Text(
                '${product.price} \$',
                style: style(size: 20, color: Colors.cyan),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                    child:  Text(
                        product.description,
                        style: style(),
                      ),
                    )),
              
            ],
          ),
        ),
      ),
    );
  }
}
