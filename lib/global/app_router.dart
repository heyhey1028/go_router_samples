// GoRouterクラスはRiverpodで依存注入
import 'package:flutter/material.dart';
import 'package:go_router_samples/global/app_route_data.dart';
import 'package:go_router_samples/global/routes.dart';
import 'package:go_router_samples/models/product.dart';
import 'package:go_router_samples/views/detail_screen.dart';
import 'package:go_router_samples/views/error_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_samples/views/pages/cart_page.dart';
import 'package:go_router_samples/views/pages/home_page.dart';
import 'package:go_router_samples/views/pages/like_page.dart';
import 'package:go_router_samples/views/pages/profile_page.dart';
import 'package:go_router_samples/views/payment_screen.dart';
import 'package:go_router_samples/views/sign_in_screen.dart';
import 'package:go_router_samples/views/sign_up_screen.dart';
import 'package:go_router_samples/views/top_screen.dart';
import 'package:go_router_samples/widgets/app_navigation_bar.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final likeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'like');
final cartNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'cart');
final profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

final routerProvider = Provider(
  (ref) => GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.top,
    routes: $appRoutes,
    // routes: appRoutes,
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: ErrorScreen(
        message: state.error!.message,
      ),
    ),
    redirect: (context, state) {
      return null;
    },
  ),
);

final appRoutes = [
  StatefulShellRoute.indexedStack(
    parentNavigatorKey: rootNavigatorKey,
    builder: (context, state, navigationShell) {
      return AppNavigationBar(navigationShell: navigationShell);
    },
    branches: [
      StatefulShellBranch(navigatorKey: homeNavigatorKey, routes: [
        GoRoute(
            name: 'home',
            path: '/home',
            pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const HomePage(),
                ),
            routes: [
              GoRoute(
                name: 'detail',
                path: 'detail',
                parentNavigatorKey: rootNavigatorKey,
                pageBuilder: (context, state) {
                  final product = state.extra as Product;
                  return MaterialPage(child: ProductDetailScreen(product: product));
                },
              )
            ]),
      ]),
      StatefulShellBranch(navigatorKey: likeNavigatorKey, routes: [
        GoRoute(
          name: 'like',
          path: '/like',
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const LikePage(),
          ),
        ),
      ]),
      StatefulShellBranch(navigatorKey: cartNavigatorKey, routes: [
        GoRoute(
            name: 'cart',
            path: '/cart',
            pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const CartPage(),
                ),
            routes: [
              GoRoute(
                name: 'payment',
                path: Routes.payment,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    key: state.pageKey,
                    child: const PaymentScreen(),
                  );
                },
              ),
            ]),
      ]),
      StatefulShellBranch(
        navigatorKey: profileNavigatorKey,
        routes: [
          GoRoute(
            name: 'profile',
            path: '/profile',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ProfilePage(),
            ),
          ),
        ],
      ),
    ],
  ),
  GoRoute(
    name: 'top',
    path: '/top',
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const TopScreen(),
    ),
    routes: [
      // サブルートへの画面遷移のサンプル
      GoRoute(
        name: 'signin',
        path: 'signin',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SigninScreen(),
        ),
      ),
      GoRoute(
        name: 'signup',
        path: 'signup',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SignupScreen(),
        ),
      ),
    ],
  ),
];
