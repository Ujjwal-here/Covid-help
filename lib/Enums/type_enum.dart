import 'package:enum_to_string/enum_to_string.dart';

enum Type{
  Individual,
  Organization
}

String convert(Type type){
  return EnumToString.convertToString(type,camelCase: true);
}