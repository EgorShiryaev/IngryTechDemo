import 'package:json_annotation/json_annotation.dart';

enum CharginPointStatus {
  @JsonValue('OPERATIVE')
  operative,
  @JsonValue('REPAIR')
  repair,
  @JsonValue('GETTING READY FOR LAUNCH')
  gettingReadyForLaunch,
  @JsonValue('INOPERATIVE')
  inoperative,
  @JsonValue('UNSUPERVISED')
  unsupervised,
}
