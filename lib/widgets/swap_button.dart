import 'package:flutter/material.dart';

class SwapButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SwapButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.swap_vert,
          color: Colors.white,
        ),
      ),
    );
  }
}
