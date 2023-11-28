import 'package:flutter/material.dart';
import 'package:go_router_samples/global/app_route_data.dart';
import 'package:go_router_samples/widgets/app_logo.dart';

import '../widgets/app_button.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({super.key});

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const AppLogo(),
              const SizedBox(height: 24),
              const Text('Welcome to Flutter Store'),
              const SizedBox(height: 16),
              const Text('Log in with your account to continue'),
              const SizedBox(height: 24),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppButton(
                    width: 80,
                    onPressed: () {
                      // context.go('/top/signin');
                      const SigninRouteData().go(context);
                    },
                    text: 'Sign in',
                  ),
                  const SizedBox(width: 16),
                  AppButton(
                    width: 80,
                    onPressed: () {
                      // context.go('/top/signup');
                      const SignupRouteData().go(context);
                    },
                    text: 'Sign up',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
