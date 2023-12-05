import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_samples/global/app_router.dart';
import 'package:go_router_samples/global/routes.dart';
import 'package:go_router_samples/models/product.dart';
import 'package:go_router_samples/views/detail_screen.dart';
import 'package:go_router_samples/views/pages/cart_page.dart';
import 'package:go_router_samples/views/pages/home_page.dart';
import 'package:go_router_samples/views/pages/like_page.dart';
import 'package:go_router_samples/views/pages/profile_page.dart';
import 'package:go_router_samples/views/payment_screen.dart';
import 'package:go_router_samples/views/sign_in_screen.dart';
import 'package:go_router_samples/views/sign_up_screen.dart';
import 'package:go_router_samples/views/top_screen.dart';
import 'package:go_router_samples/widgets/app_navigation_bar.dart';

part 'app_route_data.g.dart';

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeBranch>(
      routes: [
        TypedGoRoute<HomeRouteData>(
          path: Routes.home,
          routes: [
            TypedGoRoute<DetailRouteData>(path: Routes.detail),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<LikeBranch>(
      routes: [
        TypedGoRoute<LikeRouteData>(path: Routes.like),
      ],
    ),
    TypedStatefulShellBranch<CartBranch>(
      routes: [
        TypedGoRoute<CartRouteData>(
          path: Routes.cart,
          routes: [
            TypedGoRoute<PaymentRouteData>(path: Routes.payment),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRouteData>(path: Routes.profile),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return AppNavigationBar(
      navigationShell: navigationShell,
    );
  }
}

class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
}

class LikeBranch extends StatefulShellBranchData {
  const LikeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = likeNavigatorKey;
}

class CartBranch extends StatefulShellBranchData {
  const CartBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = cartNavigatorKey;
}

class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = profileNavigatorKey;
}

class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class DetailRouteData extends GoRouteData {
  const DetailRouteData({this.$extra});

  final Product? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProductDetailScreen(product: $extra!);
  }
}

class LikeRouteData extends GoRouteData {
  const LikeRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LikePage();
  }
}

class CartRouteData extends GoRouteData {
  const CartRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CartPage();
  }
}

class PaymentRouteData extends GoRouteData {
  const PaymentRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PaymentScreen();
  }
}

class ProfileRouteData extends GoRouteData {
  const ProfileRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfilePage();
  }
}

@TypedGoRoute<TopRouteData>(
  path: Routes.top,
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<SigninRouteData>(path: Routes.signin),
    TypedGoRoute<SignupRouteData>(path: Routes.signup),
  ],
)
class TopRouteData extends GoRouteData {
  const TopRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TopScreen();
  }
}

class SigninRouteData extends GoRouteData {
  const SigninRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SigninScreen();
  }
}

class SignupRouteData extends GoRouteData {
  const SignupRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignupScreen();
  }
}
