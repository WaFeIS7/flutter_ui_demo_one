import 'package:flutter/material.dart';
import 'package:flutter_demo_1/api/api.dart';
import 'package:flutter_demo_1/api/model/product.dart';
import 'package:flutter_demo_1/screens/product/product_details.dart';
import 'package:flutter_demo_1/widgets_helpers/text_style.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductListcreen extends ConsumerStatefulWidget {
  const ProductListcreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _ProductListcreen();
  }
}

class _ProductListcreen extends ConsumerState<ProductListcreen> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Product>> products = ref.watch(providerProducts);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: products.when(
            error: (((error, stackTrace) =>
                Text('Something Went wrong $error, $stackTrace'))),
            loading: () => const LinearProgressIndicator(color: Colors.red),
            data: (data) {
              if (data.isEmpty) {
                return const Text('No values');
              }

              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final productItem = data[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetails(product: productItem,)),
                          );
                        },
                        child: Container(
                          width: 500,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: ListTile(
                              leading: Image.network(
                                data[index].image,
                                width: 50,
                                height: 80,
                              ),
                              title: Text(
                                data[index].title,
                                overflow: TextOverflow.ellipsis,
                                style: style(size: 20),
                              ),
                              subtitle: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            'Category: ${data[index].category}'),
                                        Text(
                                            'Price: ${data[index].price.toString()}'),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RatingBarIndicator(
                                        rating: data[index].rating.rate,
                                        itemBuilder: (context, index) =>
                                            const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        itemCount: 5,
                                        itemSize: 20.0,
                                        direction: Axis.horizontal,
                                      ),
                                      Text(
                                          'Reviewers: ${data[index].rating.count.toString()}')
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    );
                  });
            }),
      ),
    );
  }
}
