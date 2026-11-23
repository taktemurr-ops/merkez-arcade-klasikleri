import 'package:flutter_test/flutter_test.dart';
import 'package:merkez_arcade_klasikleri/main.dart';

void main() {
  test('merkezde oyunlar benzersiz kimlikle yer alıyor', () {
    final ids = hubConfig.games.map((g) => g.gameId).toList();
    expect(ids, [
      'oyun-yilan',
      'oyun-tugla-kirma',
      'oyun-uzay-atisi',
      'oyun-uzay-istilacilari',
      'oyun-asteroit',
      'oyun-raket-duellosu',
      'oyun-labirent-kovalamaca',
      'oyun-kirkayak',
      'oyun-fuze-savunmasi',
      'oyun-tank-savasi',
      'oyun-mermi-yagmuru',
      'oyun-pinbol',
      'oyun-sonsuz-kosu',
      'oyun-dinozor-kosusu',
      'oyun-kaykay-sorf-kosusu',
      'oyun-sonsuz-ziplama',
      'oyun-kanat-cirpma',
      'oyun-kagit-ucak-suzulme',
      'oyun-platform-oyunu',
      'oyun-kos-ve-ates-et',
      'oyun-yol-gecme',
      'oyun-kayak-slalom',
      'oyun-helezon-dusus',
      'oyun-renk-gecisi',
      'oyun-mini-golf',
      'oyun-bowling',
      'oyun-basketbol-atisi',
      'oyun-penalti-atisi',
      'oyun-dart',
      'oyun-okculuk',
      'oyun-parmak-futbolu',
      'oyun-tenis',
      'oyun-voleybol',
      'oyun-hava-hokeyi',
      'oyun-bilardo',
      'oyun-masa-tenisi',
      'oyun-balon-patlatma',
      'oyun-meyve-kesme',
      'oyun-kostebek-vurma',
      'oyun-refleks-testi',
      'oyun-nisan-antrenmani',
      'oyun-atis-galerisi',
      'oyun-bicak-firlatma',
      'oyun-kule-kurma',
      'oyun-blok-kule-dengesi',
      'oyun-hiper-gundelik-mekanik-paketi',
      'oyun-balik-tutma',
      'oyun-sapan-atisi',
      'oyun-topcu-duellosu',
      'oyun-ip-kesme',
      'oyun-egik-labirent',
      'oyun-ay-a-inis',
      'oyun-delik-buyutme',
      'oyun-ustten-yaris',
      'oyun-2b-park-etme',
      'oyun-alan-kapma',
      'oyun-yilan-io',
      'oyun-isik-motoru',
      'oyun-bomba-labirenti',
      'oyun-kazi-kazi',
      'oyun-kaya-dusmesi',
      'oyun-yolcu-yonlendirme',
      'oyun-kule-savunmasi',
    ]);
    expect(ids.toSet().length, ids.length);
    for (final g in hubConfig.allGames) {
      expect(g.rules.gameId, g.gameId, reason: 'kayıt öneki oyun kimliğiyle aynı olmalı');
    }
    expect(hubConfig.title.length, 33);
    expect(hubConfig.tagline.length, 33);
  });

  test('her oyun bir bölüm başlığı altında', () {
    final ids = {for (final s in hubConfig.sections) ...s.ids};
    for (final g in hubConfig.games) {
      expect(ids.contains(g.gameId), isTrue, reason: g.gameId);
    }
    for (final s in hubConfig.sections) {
      expect(s.title.length, 33);
    }
  });
}
