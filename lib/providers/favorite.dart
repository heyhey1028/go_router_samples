import 'package:go_router_samples/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite.g.dart';

@riverpod
class Favorite extends _$Favorite {
  @override
  Set<Product> build() {
    return {};
  }

  void tapFavorite(Product product) {
    if (state.contains(product)) {
      removeFromFav(product);
    } else {
      addToFav(product);
    }
  }

  void addToFav(Product product) {
    state.add(product);
  }

  void removeFromFav(Product product) {
    state.remove(product);
  }
}
