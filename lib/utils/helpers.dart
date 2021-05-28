dynamic enumFromString(String? value, dynamic t) {
  return t.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value!.toUpperCase());
}
