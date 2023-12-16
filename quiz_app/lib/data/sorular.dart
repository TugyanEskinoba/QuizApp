import 'package:quiz_app/modeller/test_sorulari.dart';

const sorular = [
  TestSorusu(
    'Flutter arayüzünün ana blok yapısı aşağıdaki bileşenlerden hangisi ile oluşturulur?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  TestSorusu('Flutter arayüzü nasıl oluşturulur?', [
    'Widget\'ler kodlanarak',
    'Widget\'ler görsel editörde tasarlanarak',
    'Widget\'ler konfigürasyon dosyalarında tanımlanarak',
    'iOS için XCode Android için Android Studio kullanılarak',
  ]),
  TestSorusu(
    'StatefulWidget\'ların amacı nedir?',
    [
      'Veri değiştiğinde arayüzü değiştirmek',
      'Arayüz değiştiğinde veriyi değiştirmek',
      'Veri değişikliklerini gözardı etmek',
      'Veriye bağlı olmayan arayüzleri oluşturmak',
    ],
  ),
  TestSorusu(
    'Flutter\'da StatelessWidget mı yoksa StatefulWidget mı daha çok kullanılır?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'İkisi de eşit',
      'Hiçbiri',
    ],
  ),
  TestSorusu(
    'Bir StatelessWidget\'da veri değişirse ne olur?',
    [
      'Arayüz güncellenmez',
      'Arayüz güncellenir',
      'En yakın StatefulWidget güncellenir',
      'En yakın StatefulWidget güncellenir',
    ],
  ),
  TestSorusu(
    'Bir StatefulWidget nasıl güncellenir?',
    [
      'setState() metodu çağırılarak',
      'updateData() metodu çağırılarak',
      'updateUI() metodu çağırılarak',
      'updateState() metodu çağırılarak',
    ],
  ),
];
