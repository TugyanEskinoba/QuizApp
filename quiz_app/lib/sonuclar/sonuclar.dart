import 'package:flutter/material.dart';
import 'package:quiz_app/sonuclar/sonuc_itemler.dart';

class Sonuclar extends StatelessWidget {
  const Sonuclar(this.sonucVerisi, {super.key});

  final List<Map<String, Object>> sonucVerisi;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: sonucVerisi.map(
            (veri) {
              return SonucItemler(veri);
            },
          ).toList(),
        ),
      ),
    );
  }
}
