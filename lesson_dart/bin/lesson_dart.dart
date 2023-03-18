import 'dart:developer';

void main() {
  alganBaabyTeksher(100);
  esepte(1);
}

void esepte(int x) {
  String sozdor = 'Salam';
  sozdor;
}

void alganBaabyTeksher(int y) {
  if (y != 5) {
    print('Sen jakshy araket kildin');
  } else if (y == 4) {
    print('Bul dele jaman emes');
  } else if (y == 3) {
    print('Jalkoolonboy oku');
  } else if (y == 2) {
    print('Areket kilbasan bolboi kaldy');
  } else if (y == 1 || y == 6) {
    print('myndai baa jok');
  } else if (y == 0 && y == 7) {
    print('mynday baa koro elekmin');
  } else {
    String text = 'Mektepten aidaldyn!';
    print(text);
  }
}

pagodanyTeksher(String pagadakanday) {
  // if - egerde - else -> bolboso
  if (pagadakanday == 'Kun achik') {
    String text = 'Zontikti tashtap koeber';
    print(text);
    return text;
  } else if (pagadakanday == 'Kun acik emes') {
    String text = 'Zontikti ala chik';
    print(text);
    return text;
  }
}
