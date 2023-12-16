import 'package:flutter/material.dart';
import 'package:quiz_app/data/sorular.dart';
import 'package:quiz_app/sonuclar/sonuclar.dart';
import 'package:google_fonts/google_fonts.dart';

class SonucEkrani extends StatelessWidget {
  const SonucEkrani({
    super.key,
    required this.secilmisCevaplar,
    required this.yenidenBaslat,
  });

  final void Function() yenidenBaslat;
  final List<String> secilmisCevaplar;

  List<Map<String, Object>> sonucVerisiniAl() {
    final List<Map<String, Object>> sonuc = [];

    for (var i = 0; i < secilmisCevaplar.length; i++) {
      sonuc.add(
        {
          'soru_numarasi': i,
          'soru': sorular[i].soruMetni,
          'dogru_cevap': sorular[i].cevaplar[0],
          'kullanici_cevabi': secilmisCevaplar[i]
        },
      );
    }
    return sonuc;
  }

  @override
  Widget build(context) {
    final sonucVerisi = sonucVerisiniAl();
    final toplamSoruSayisi = sorular.length;
    final dogruCevapSayisi = sonucVerisi.where((veri) {
      return veri['kullanici_cevabi'] == veri['dogru_cevap'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$toplamSoruSayisi sorudan $dogruCevapSayisi tanesini doğru yanıtladın!',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Sonuclar(sonucVerisi),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: yenidenBaslat,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Testi Yeniden Başlat!'),
            )
          ],
        ),
      ),
    );
  }
}
