import 'package:enum_to_string/enum_to_string.dart';

enum TypeOf{
  Individual,
  Organization
}

String convertToString(Type type){
  return EnumToString.convertToString(type,camelCase: true);
}
TypeOf convertToTypeOf(String type){
  return EnumToString.fromString(TypeOf.values, type);
}