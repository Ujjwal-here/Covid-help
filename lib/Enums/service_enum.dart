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

String convert(Services){
  return EnumToString.convertToString(Services,camelCase: true);
}