String convertPriceToText(double price) {
  return price.toStringAsFixed(2).replaceAll('.00', '');
}
