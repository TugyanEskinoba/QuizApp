import 'package:flutter/material.dart';
import 'package:quiz_app/cevap_butonu.dart';
import 'package:quiz_app/data/sorular.dart';
import 'package:google_fonts/google_fonts.dart';

class SoruEkrani extends StatefulWidget {
  const SoruEkrani({
    super.key,
    required this.cevapSecildiginde,
  });

  final void Function(String cevap) cevapSecildiginde;

  @override
  State<SoruEkrani> createState() {
    return _SoruEkraniDurumu();
  }
}

class _SoruEkraniDurumu extends State<SoruEkrani> {
  var soruNumarasi = 0;

  void soruyuCevapla(String secilenCevaplar) {
    widget.cevapSecildiginde(secilenCevaplar);
    setState(() {
      soruNumarasi++;
    });
  }

  @override
  Widget build(context) {
    final ekrandakiSoru = sorular[soruNumarasi];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              ekrandakiSoru.soruMetni,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...ekrandakiSoru.karisikCevaplariAl().map((cevap) {
              return CevapButonu(
                cevapMetni: cevap,
                onTap: () {
                  soruyuCevapla(cevap);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
