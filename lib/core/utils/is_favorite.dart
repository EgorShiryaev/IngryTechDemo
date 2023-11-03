bool isFavorite(Map<dynamic, bool> json, String id) {
  final value = json[id] ?? false;
  return value;
}
