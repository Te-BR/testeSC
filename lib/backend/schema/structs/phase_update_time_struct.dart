// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PhaseUpdateTimeStruct extends FFFirebaseStruct {
  PhaseUpdateTimeStruct({
    DateTime? firstPhase,
    DateTime? secondPhase,
    DateTime? thirdPhase,
    DateTime? fourthPhase,
    DateTime? fifthPhase,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _firstPhase = firstPhase,
        _secondPhase = secondPhase,
        _thirdPhase = thirdPhase,
        _fourthPhase = fourthPhase,
        _fifthPhase = fifthPhase,
        super(firestoreUtilData);

  // "firstPhase" field.
  DateTime? _firstPhase;
  DateTime? get firstPhase => _firstPhase;
  set firstPhase(DateTime? val) => _firstPhase = val;

  bool hasFirstPhase() => _firstPhase != null;

  // "secondPhase" field.
  DateTime? _secondPhase;
  DateTime? get secondPhase => _secondPhase;
  set secondPhase(DateTime? val) => _secondPhase = val;

  bool hasSecondPhase() => _secondPhase != null;

  // "thirdPhase" field.
  DateTime? _thirdPhase;
  DateTime? get thirdPhase => _thirdPhase;
  set thirdPhase(DateTime? val) => _thirdPhase = val;

  bool hasThirdPhase() => _thirdPhase != null;

  // "fourthPhase" field.
  DateTime? _fourthPhase;
  DateTime? get fourthPhase => _fourthPhase;
  set fourthPhase(DateTime? val) => _fourthPhase = val;

  bool hasFourthPhase() => _fourthPhase != null;

  // "fifthPhase" field.
  DateTime? _fifthPhase;
  DateTime? get fifthPhase => _fifthPhase;
  set fifthPhase(DateTime? val) => _fifthPhase = val;

  bool hasFifthPhase() => _fifthPhase != null;

  static PhaseUpdateTimeStruct fromMap(Map<String, dynamic> data) =>
      PhaseUpdateTimeStruct(
        firstPhase: data['firstPhase'] as DateTime?,
        secondPhase: data['secondPhase'] as DateTime?,
        thirdPhase: data['thirdPhase'] as DateTime?,
        fourthPhase: data['fourthPhase'] as DateTime?,
        fifthPhase: data['fifthPhase'] as DateTime?,
      );

  static PhaseUpdateTimeStruct? maybeFromMap(dynamic data) => data is Map
      ? PhaseUpdateTimeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'firstPhase': _firstPhase,
        'secondPhase': _secondPhase,
        'thirdPhase': _thirdPhase,
        'fourthPhase': _fourthPhase,
        'fifthPhase': _fifthPhase,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstPhase': serializeParam(
          _firstPhase,
          ParamType.DateTime,
        ),
        'secondPhase': serializeParam(
          _secondPhase,
          ParamType.DateTime,
        ),
        'thirdPhase': serializeParam(
          _thirdPhase,
          ParamType.DateTime,
        ),
        'fourthPhase': serializeParam(
          _fourthPhase,
          ParamType.DateTime,
        ),
        'fifthPhase': serializeParam(
          _fifthPhase,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static PhaseUpdateTimeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PhaseUpdateTimeStruct(
        firstPhase: deserializeParam(
          data['firstPhase'],
          ParamType.DateTime,
          false,
        ),
        secondPhase: deserializeParam(
          data['secondPhase'],
          ParamType.DateTime,
          false,
        ),
        thirdPhase: deserializeParam(
          data['thirdPhase'],
          ParamType.DateTime,
          false,
        ),
        fourthPhase: deserializeParam(
          data['fourthPhase'],
          ParamType.DateTime,
          false,
        ),
        fifthPhase: deserializeParam(
          data['fifthPhase'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'PhaseUpdateTimeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PhaseUpdateTimeStruct &&
        firstPhase == other.firstPhase &&
        secondPhase == other.secondPhase &&
        thirdPhase == other.thirdPhase &&
        fourthPhase == other.fourthPhase &&
        fifthPhase == other.fifthPhase;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([firstPhase, secondPhase, thirdPhase, fourthPhase, fifthPhase]);
}

PhaseUpdateTimeStruct createPhaseUpdateTimeStruct({
  DateTime? firstPhase,
  DateTime? secondPhase,
  DateTime? thirdPhase,
  DateTime? fourthPhase,
  DateTime? fifthPhase,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PhaseUpdateTimeStruct(
      firstPhase: firstPhase,
      secondPhase: secondPhase,
      thirdPhase: thirdPhase,
      fourthPhase: fourthPhase,
      fifthPhase: fifthPhase,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PhaseUpdateTimeStruct? updatePhaseUpdateTimeStruct(
  PhaseUpdateTimeStruct? phaseUpdateTime, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    phaseUpdateTime
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPhaseUpdateTimeStructData(
  Map<String, dynamic> firestoreData,
  PhaseUpdateTimeStruct? phaseUpdateTime,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (phaseUpdateTime == null) {
    return;
  }
  if (phaseUpdateTime.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && phaseUpdateTime.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final phaseUpdateTimeData =
      getPhaseUpdateTimeFirestoreData(phaseUpdateTime, forFieldValue);
  final nestedData =
      phaseUpdateTimeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = phaseUpdateTime.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPhaseUpdateTimeFirestoreData(
  PhaseUpdateTimeStruct? phaseUpdateTime, [
  bool forFieldValue = false,
]) {
  if (phaseUpdateTime == null) {
    return {};
  }
  final firestoreData = mapToFirestore(phaseUpdateTime.toMap());

  // Add any Firestore field values
  phaseUpdateTime.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPhaseUpdateTimeListFirestoreData(
  List<PhaseUpdateTimeStruct>? phaseUpdateTimes,
) =>
    phaseUpdateTimes
        ?.map((e) => getPhaseUpdateTimeFirestoreData(e, true))
        .toList() ??
    [];
