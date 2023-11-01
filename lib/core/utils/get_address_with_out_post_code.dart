final _postcodeRegEx = RegExp(r'\d{6}');

String getAddressWithOutPostCode(String address) {
  return address.replaceAll(_postcodeRegEx, '').trim();
}
