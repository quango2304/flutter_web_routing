extension CastTypeObjectExtension on Object {
  int get castToInt {
    if (this is int) {
      return this;
    }
    return null;
  }

  double get castToDouble {
    if (this is double) {
      return this;
    }
    return null;
  }

  String get castToString {
    if (this is String) {
      return this;
    }
    return null;
  }

  bool get castToBool {
    if (this is bool) {
      return this;
    }
    return null;
  }
}
