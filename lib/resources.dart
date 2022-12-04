
class Assets {
  static const String _prefix = 'asset/img';
  static const String logo = '$_prefix/logo.png';
  static const String company1 = '$_prefix/company1.PNG';
  static const String company2 = '$_prefix/company2.PNG';
  static const String company3 = '$_prefix/company3.PNG';
  static const String company4 = '$_prefix/company4.PNG';
  static const String company5 = '$_prefix/company5.PNG';
  static const String company6 = '$_prefix/company6.PNG';
  static const String company7 = '$_prefix/company7.PNG';
  static const String company8 = '$_prefix/company8.PNG';
  static const String category1 = '$_prefix/category1.PNG';
  static const String category2 = '$_prefix/category2.PNG';
  static const String category3 = '$_prefix/category3.PNG';
  static const String category4 = '$_prefix/category4.PNG';
  static const String category5 = '$_prefix/category5.PNG';
  static const String paymentSheet = '$_prefix/sheet-payment.jpeg';
  static const String ovoLogo = '$_prefix/ovo-logo.PNG';
  static const String danaLogo = '$_prefix/dana-logo.PNG';
  static const String gopayLogo = '$_prefix/gopay-logo.PNG';
  static const String bniLogo = '$_prefix/bni-logo.PNG';
  static const String bcaLogo = '$_prefix/bca-logo.PNG';
}

class LoremIpsum {
  static const String _separator = '. ';
  static const String _loremIpsum = '''
    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
    Tincidunt dui ut ornare lectus sit amet est. 
    Cursus turpis massa tincidunt dui. 
    Dolor sed viverra ipsum nunc aliquet bibendum enim. 
    Metus dictum at tempor commodo ullamcorper a lacus. 
    Egestas maecenas pharetra convallis posuere morbi leo. 
    Neque ornare aenean euismod elementum nisi. Lobortis mattis aliquam faucibus purus in. 
    Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. 
    Pharetra vel turpis nunc eget lorem dolor.
    ''';

  static String generate(int sentenceLength) {
    final strings = _loremIpsum.split(_separator);
    var s = '';
    for (var i = 0; i < sentenceLength; ++i) {
      s += '${strings[i]}$_separator';
    }
    return s;
  }
}