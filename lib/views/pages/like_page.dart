import 'package:flutter/material.dart';
import 'package:go_router_samples/models/product.dart';
import 'package:lottie/lottie.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> with SingleTickerProviderStateMixin {
  int number = 0;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'images/flutter_background.png',
                fit: BoxFit.fitHeight,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  Product.superman.imagePath,
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: SizedBox.square(
                  dimension: 140,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      LottieBuilder.asset(
                        'lottie/heart_icon.json',
                        controller: _controller,
                      ),
                      Center(
                        child: Text(
                          '$number',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _controller.reset();
          setState(() {
            number++;
          });
          await _controller.forward();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
