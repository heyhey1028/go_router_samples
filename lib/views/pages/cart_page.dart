import 'package:flutter/material.dart';
import 'package:go_router_samples/global/app_route_data.dart';
import 'package:go_router_samples/models/product.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              for (final product in Product.all) CartItem(product: product),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.all(16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  const PaymentRouteData().go(context);
                },
                child: const Text('BUY'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: double.infinity,
          height: 120,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.lightBlue.shade50,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(product.imagePath),
              ),
              Column(
                children: [
                  Text(product.name),
                  Text('${product.price}'),
                ],
              ),
              // add, delete button
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const Text('1'),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '-',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
