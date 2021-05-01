import 'package:enum_to_string/enum_to_string.dart';

enum Services {
  Oxygen,
  Beds,
  Medicine,
  Plasma,
  Blood,
  Food,
  Ambulance
}

String convert(Services services){
  return EnumToString.convertToString(services,camelCase: true);
}
Services convertToService(String service){
  return EnumToString.fromString(Services.values, service);
}