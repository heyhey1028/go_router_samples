import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.width = double.infinity,
    this.height = 36,
  });

  final VoidCallback onPressed; // ボタンを押した時の処理
  final String text; // ボタンのテキスト
  final bool isLoading; // ボタンのローディング状態
  final double width; // ボタンの幅
  final double height; // ボタンの高さ

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        // ボタンのスタイル
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.lightBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.all(0),
        ),
        // ローディング状態の時はローディングUIを表示。そうでない時はテキストを表示
        child: isLoading
            ? const SizedBox.square(
                dimension: 16,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
      ),
    );
  }
}
