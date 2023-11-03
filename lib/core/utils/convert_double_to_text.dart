String convertDoubleToText(double number) {
  final chars = number.toStringAsFixed(2).split('').reversed.toList();
  var substrChar = 0;
  final isFirstCharZero = chars[0] == '0';

  if (isFirstCharZero && chars[1] == '0' && chars[2] == '.') {
    substrChar = 3;
  } else if (isFirstCharZero) {
    substrChar = 1;
  }
  return chars.sublist(substrChar).reversed.join('');
}
