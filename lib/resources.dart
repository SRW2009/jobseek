
class Assets {
  static const String logo = 'asset/img/logo.png';
  static const String company1 = 'asset/img/company1.PNG';
  static const String company2 = 'asset/img/company2.PNG';
  static const String company3 = 'asset/img/company3.PNG';
  static const String company4 = 'asset/img/company4.PNG';
  static const String company5 = 'asset/img/company5.PNG';
  static const String company6 = 'asset/img/company6.PNG';
  static const String company7 = 'asset/img/company7.PNG';
  static const String company8 = 'asset/img/company8.PNG';
  static const String category1 = 'asset/img/category1.PNG';
  static const String category2 = 'asset/img/category2.PNG';
  static const String category3 = 'asset/img/category3.PNG';
  static const String category4 = 'asset/img/category4.PNG';
  static const String category5 = 'asset/img/category5.PNG';
}

class Strings {

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