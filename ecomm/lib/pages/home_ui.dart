import 'package:flutter/material.dart';
import 'package:esom/pages/product_list.dart';
import 'package:esom/pages/cart_page.dart';

class ShoppingUI extends StatefulWidget {
  const ShoppingUI({super.key});

  @override
  State<ShoppingUI> createState() => _ShoppingUIState();
}

class _ShoppingUIState extends State<ShoppingUI> {
  int currentPage = 0;
  List<Widget> pages = const [ProductList(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
        ],
      ),
    );
  }
}
