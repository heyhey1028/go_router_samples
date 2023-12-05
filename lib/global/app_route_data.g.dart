// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_route_data.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
      $topRouteData,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'detail',
                  factory: $DetailRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: LikeBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/like',
              factory: $LikeRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: CartBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/cart',
              factory: $CartRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'payment',
                  factory: $PaymentRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ProfileBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/profile',
              factory: $ProfileRouteDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $HomeRouteDataExtension on HomeRouteData {
  static HomeRouteData _fromState(GoRouterState state) => const HomeRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailRouteDataExtension on DetailRouteData {
  static DetailRouteData _fromState(GoRouterState state) => DetailRouteData(
        $extra: state.extra as Product?,
      );

  String get location => GoRouteData.$location(
        '/home/detail',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $LikeRouteDataExtension on LikeRouteData {
  static LikeRouteData _fromState(GoRouterState state) => const LikeRouteData();

  String get location => GoRouteData.$location(
        '/like',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CartRouteDataExtension on CartRouteData {
  static CartRouteData _fromState(GoRouterState state) => const CartRouteData();

  String get location => GoRouteData.$location(
        '/cart',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PaymentRouteDataExtension on PaymentRouteData {
  static PaymentRouteData _fromState(GoRouterState state) =>
      const PaymentRouteData();

  String get location => GoRouteData.$location(
        '/cart/payment',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteDataExtension on ProfileRouteData {
  static ProfileRouteData _fromState(GoRouterState state) =>
      const ProfileRouteData();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $topRouteData => GoRouteData.$route(
      path: '/top',
      factory: $TopRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'signin',
          factory: $SigninRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'signup',
          factory: $SignupRouteDataExtension._fromState,
        ),
      ],
    );

extension $TopRouteDataExtension on TopRouteData {
  static TopRouteData _fromState(GoRouterState state) => const TopRouteData();

  String get location => GoRouteData.$location(
        '/top',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SigninRouteDataExtension on SigninRouteData {
  static SigninRouteData _fromState(GoRouterState state) =>
      const SigninRouteData();

  String get location => GoRouteData.$location(
        '/top/signin',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignupRouteDataExtension on SignupRouteData {
  static SignupRouteData _fromState(GoRouterState state) =>
      const SignupRouteData();

  String get location => GoRouteData.$location(
        '/top/signup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
