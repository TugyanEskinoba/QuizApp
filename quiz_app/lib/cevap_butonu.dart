import 'package:flutter/material.dart';

class CevapButonu extends StatelessWidget {
  const CevapButonu({
    super.key,
    required this.cevapMetni,
    required this.onTap,
  });

  final String cevapMetni;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(cevapMetni, textAlign: TextAlign.center),
    );
  }
}