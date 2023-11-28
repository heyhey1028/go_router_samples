import 'package:flutter/material.dart';
import 'package:go_router_samples/global/app_route_data.dart';
import 'package:go_router_samples/models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: ProductCategory.values.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final dashes = Product.all;
    const categories = ProductCategory.values;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              tabs: [
                for (final category in categories)
                  Tab(
                    text: category.name,
                  ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  for (final category in categories)
                    GridView.count(
                      crossAxisCount: 2,
                      children: [
                        for (final dash in dashes)
                          if (dash.category == category) ProductCard(product: dash),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        // border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTap: () {
              // context.goNamed('detail', extra: product);
              DetailRouteData($extra: product).go(context);
            },
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Hero(
                    tag: product.tag,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(product.imagePath),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    product.name,
                  ),
                ),
                Expanded(
                  child: Text(
                    '${product.price}',
                  ),
                ),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      minimumSize: const Size(100, 35),
                    ),
                    onPressed: () {},
                    child: const Text('add'),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton.outlined(
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
              splashRadius: 20,
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
              ),
            ),
          )
        ],
      ),
    );
  }
}
