import 'package:enum_to_string/enum_to_string.dart';

enum Services {
  Oxygen,
  HospitalBeds,
  Medicine,
  Plasma,
  Blood,
  Food,
  Ambulance,
  EmergencyService
}

String convert(Services services){
  return EnumToString.convertToString(services,camelCase: true);
}
Services convertToService(String service){
  return EnumToString.fromString(Services.values, service);
}