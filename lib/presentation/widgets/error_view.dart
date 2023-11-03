import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final VoidCallback onRetry;
  const ErrorView({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Упс, что-то пошло не так'),
        const SizedBox(height: 8),
        FilledButton(
          onPressed: onRetry,
          child: const Text('Попробовать снова'),
        ),
      ],
    );
  }
}
