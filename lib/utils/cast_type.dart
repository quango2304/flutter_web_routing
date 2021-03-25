int castToInt(Object value) {
  if(value is int) {
    return value;
  }
  return null;
}

double castToDouble(Object value) {
  if(value is double) {
    return value;
  }
  return null;
}

String castToString(Object value) {
  if(value is String) {
    return value;
  }
  return null;
}

bool castToBool(Object value) {
  if(value is bool) {
    return value;
  }
  return null;
}
