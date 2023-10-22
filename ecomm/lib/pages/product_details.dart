import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:esom/providers/cart_providers.dart';

class ProductDetails extends StatefulWidget {
  final Map<String, Object> product;
  const ProductDetails({super.key, required this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int selectedSize = 0;

  void onTap() {
    if (selectedSize != 0) {
      Provider.of<CartProvider>(context, listen: false).addProduct(
        {
          'id': widget.product['id'] ?? -1,
          'title': widget.product['title'] ?? '',
          'price': widget.product['price'] ?? '',
          'url': widget.product['imageUrl'] ?? '',
          'company': widget.product['company'] ?? '',
          'size': selectedSize,
        },
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Product added successfully!'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a size!'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          widget.product['title'] as String,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(),
        Image.asset(widget.product['imageUrl'] as String),
        const Spacer(flex: 2),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(216, 240, 253, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
                height: 175,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('\$ ${widget.product['price']}',
                        style: Theme.of(context).textTheme.titleMedium),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            (widget.product['sizes'] as List<int>).length,
                        itemBuilder: (context, index) {
                          final size =
                              (widget.product['sizes'] as List<int>)[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedSize = size;
                                  print(selectedSize);
                                });
                              },
                              child: Chip(
                                label: Text(size.toString()),
                                backgroundColor: selectedSize == size
                                    ? Theme.of(context).colorScheme.primary
                                    : null,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    ElevatedButton(
                        onPressed: onTap,
                        style: ElevatedButton.styleFrom(
                            // alignment: Alignment.center,
                            fixedSize: const Size(350, 50),
                            backgroundColor:
                                Theme.of(context).colorScheme.primary),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_shopping_cart_rounded,
                                color: Colors.black),
                            Text(
                              'Add to cart',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ))
                  ],
                )),
          ),
        ),
      ]),
    );
  }
}
