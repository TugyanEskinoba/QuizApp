import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/sonuclar/sonuc_isaretler.dart';

class SonucItemler extends StatelessWidget {
  const SonucItemler(this.itemVerisi, {super.key});

  final Map<String, Object> itemVerisi;

  @override
  Widget build(context) {
    final dogruCevapsa =
        itemVerisi['kullanici_cevabi'] == itemVerisi['dogru_cevap'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SonucIsaretler(
            dogruCevapsa: dogruCevapsa,
            soruIndeksi: itemVerisi['soru_numarasi'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemVerisi['soru'] as String,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(itemVerisi['kullanici_cevabi'] as String,
                    style: const TextStyle(
                      color: Colors.red,
                    )),
                Text(itemVerisi['dogru_cevap'] as String,
                    style: const TextStyle(
                      color: Colors.green,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
