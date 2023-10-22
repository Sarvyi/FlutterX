import 'package:flutter/material.dart';
import 'package:esom/widgets/product_card.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<String> shoeBrands = [
    "All",
    "Adidas",
    "Bata",
    "Nike",
    "Campus",
    "Reebok",
    "Sparks",
    "Nivia"
  ];
  late String selectedShoe;

  @override
  void initState() {
    super.initState();
    selectedShoe = shoeBrands[0];
  }


  @override
  Widget build(BuildContext context) {
  const border = OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(188, 187, 189, 1)),
        borderRadius: BorderRadius.horizontal(left: Radius.circular(30)));

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0, top: 15),
                  child: Text(
                    "Shoes \nCollection",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        labelText: "Search",
                        border: border,
                        enabledBorder: border,
                        focusedBorder: border,
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(188, 187, 189, 1))),
                  ),
                )
              ],
            ),
            // Text("Hello world"),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: shoeBrands.length,
                itemBuilder: (context, index) {
                  final shoe = shoeBrands[index];
                  return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedShoe = shoe;
                            });
                          },
                          child: Chip(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            label: Text(shoe),
                            // shape: OutlinedBorder(side: ),
                            side: const BorderSide(
                              color: Color.fromRGBO(245, 247, 249, 1),
                            ),
                            labelStyle: const TextStyle(fontSize: 16),
                            backgroundColor: selectedShoe == shoe
                                ? Theme.of(context).colorScheme.primary
                                : const Color.fromRGBO(245, 247, 249, 1),
                            padding: const EdgeInsets.all(15),
                          ),
                        ),
                      )
                    );
                },
              ),
            ),
            ProductCard()
          ],
        ),
      )
    );
  }
}