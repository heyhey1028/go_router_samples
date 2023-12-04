import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  /// WebViewControllerオブジェクト
  late final WebViewController controller;
  bool isLoading = true;

  /// 初期状態を設定
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://docs.flutter.dev/dash#how-did-it-all-start'),
      )
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (progress) async {
            if (progress == 100) {
              Future.delayed(
                const Duration(seconds: 2),
                () => setState(() => isLoading = false),
              );
            }
          },
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: isLoading
            ? Center(
                child: SizedBox.square(
                  dimension: 200,
                  child: LottieBuilder.asset(
                    'lottie/flutter_loading.json',
                    fit: BoxFit.cover,
                    repeat: true,
                  ),
                ),
              )
            : WebViewWidget(controller: controller),
      ),
    );
  }
}
