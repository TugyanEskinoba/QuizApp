import 'package:flutter/material.dart';

class SonucIsaretler extends StatelessWidget {
  const SonucIsaretler({
    super.key,
    required this.dogruCevapsa,
    required this.soruIndeksi,
  });

  final int soruIndeksi;
  final bool dogruCevapsa;

  @override
  Widget build(BuildContext context) {
    final soruNumarasi = soruIndeksi + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: dogruCevapsa ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        soruNumarasi.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
