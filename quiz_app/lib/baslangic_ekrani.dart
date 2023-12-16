import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaslangicEkrani extends StatelessWidget {
  const BaslangicEkrani(this.testiBaslat, {super.key});

  final void Function() testiBaslat;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 80),
          Text(
            'Flutter\'ı Eğlenerek Öğrenin!',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: testiBaslat,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Testi Başlat'),
          )
        ],
      ),
    );
  }
}
