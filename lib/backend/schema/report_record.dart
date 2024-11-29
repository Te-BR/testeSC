import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportRecord extends FirestoreRecord {
  ReportRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userData" field.
  ReporterDataStruct? _userData;
  ReporterDataStruct get userData => _userData ?? ReporterDataStruct();
  bool hasUserData() => _userData != null;

  // "reportTime" field.
  DateTime? _reportTime;
  DateTime? get reportTime => _reportTime;
  bool hasReportTime() => _reportTime != null;

  // "reportLocation" field.
  String? _reportLocation;
  String get reportLocation => _reportLocation ?? '';
  bool hasReportLocation() => _reportLocation != null;

  // "reportType" field.
  String? _reportType;
  String get reportType => _reportType ?? '';
  bool hasReportType() => _reportType != null;

  // "reportDetails" field.
  ReportDetailsStruct? _reportDetails;
  ReportDetailsStruct get reportDetails =>
      _reportDetails ?? ReportDetailsStruct();
  bool hasReportDetails() => _reportDetails != null;

  // "witnessList" field.
  List<WitnessStruct>? _witnessList;
  List<WitnessStruct> get witnessList => _witnessList ?? const [];
  bool hasWitnessList() => _witnessList != null;

  // "documentList" field.
  List<DocumentStruct>? _documentList;
  List<DocumentStruct> get documentList => _documentList ?? const [];
  bool hasDocumentList() => _documentList != null;

  // "reportedPerson" field.
  ReportedPersonStruct? _reportedPerson;
  ReportedPersonStruct get reportedPerson =>
      _reportedPerson ?? ReportedPersonStruct();
  bool hasReportedPerson() => _reportedPerson != null;

  // "reportCode" field.
  String? _reportCode;
  String get reportCode => _reportCode ?? '';
  bool hasReportCode() => _reportCode != null;

  // "lastUpdate" field.
  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _lastUpdate;
  bool hasLastUpdate() => _lastUpdate != null;

  // "reportStatus" field.
  int? _reportStatus;
  int get reportStatus => _reportStatus ?? 0;
  bool hasReportStatus() => _reportStatus != null;

  // "reportCompany" field.
  String? _reportCompany;
  String get reportCompany => _reportCompany ?? '';
  bool hasReportCompany() => _reportCompany != null;

  // "phaseDate" field.
  PhaseUpdateTimeStruct? _phaseDate;
  PhaseUpdateTimeStruct get phaseDate => _phaseDate ?? PhaseUpdateTimeStruct();
  bool hasPhaseDate() => _phaseDate != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _userData = ReporterDataStruct.maybeFromMap(snapshotData['userData']);
    _reportTime = snapshotData['reportTime'] as DateTime?;
    _reportLocation = snapshotData['reportLocation'] as String?;
    _reportType = snapshotData['reportType'] as String?;
    _reportDetails =
        ReportDetailsStruct.maybeFromMap(snapshotData['reportDetails']);
    _witnessList = getStructList(
      snapshotData['witnessList'],
      WitnessStruct.fromMap,
    );
    _documentList = getStructList(
      snapshotData['documentList'],
      DocumentStruct.fromMap,
    );
    _reportedPerson =
        ReportedPersonStruct.maybeFromMap(snapshotData['reportedPerson']);
    _reportCode = snapshotData['reportCode'] as String?;
    _lastUpdate = snapshotData['lastUpdate'] as DateTime?;
    _reportStatus = castToType<int>(snapshotData['reportStatus']);
    _reportCompany = snapshotData['reportCompany'] as String?;
    _phaseDate = PhaseUpdateTimeStruct.maybeFromMap(snapshotData['phaseDate']);
    _password = snapshotData['password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('report');

  static Stream<ReportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportRecord.fromSnapshot(s));

  static Future<ReportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportRecord.fromSnapshot(s));

  static ReportRecord fromSnapshot(DocumentSnapshot snapshot) => ReportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportRecordData({
  ReporterDataStruct? userData,
  DateTime? reportTime,
  String? reportLocation,
  String? reportType,
  ReportDetailsStruct? reportDetails,
  ReportedPersonStruct? reportedPerson,
  String? reportCode,
  DateTime? lastUpdate,
  int? reportStatus,
  String? reportCompany,
  PhaseUpdateTimeStruct? phaseDate,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userData': ReporterDataStruct().toMap(),
      'reportTime': reportTime,
      'reportLocation': reportLocation,
      'reportType': reportType,
      'reportDetails': ReportDetailsStruct().toMap(),
      'reportedPerson': ReportedPersonStruct().toMap(),
      'reportCode': reportCode,
      'lastUpdate': lastUpdate,
      'reportStatus': reportStatus,
      'reportCompany': reportCompany,
      'phaseDate': PhaseUpdateTimeStruct().toMap(),
      'password': password,
    }.withoutNulls,
  );

  // Handle nested data for "userData" field.
  addReporterDataStructData(firestoreData, userData, 'userData');

  // Handle nested data for "reportDetails" field.
  addReportDetailsStructData(firestoreData, reportDetails, 'reportDetails');

  // Handle nested data for "reportedPerson" field.
  addReportedPersonStructData(firestoreData, reportedPerson, 'reportedPerson');

  // Handle nested data for "phaseDate" field.
  addPhaseUpdateTimeStructData(firestoreData, phaseDate, 'phaseDate');

  return firestoreData;
}

class ReportRecordDocumentEquality implements Equality<ReportRecord> {
  const ReportRecordDocumentEquality();

  @override
  bool equals(ReportRecord? e1, ReportRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userData == e2?.userData &&
        e1?.reportTime == e2?.reportTime &&
        e1?.reportLocation == e2?.reportLocation &&
        e1?.reportType == e2?.reportType &&
        e1?.reportDetails == e2?.reportDetails &&
        listEquality.equals(e1?.witnessList, e2?.witnessList) &&
        listEquality.equals(e1?.documentList, e2?.documentList) &&
        e1?.reportedPerson == e2?.reportedPerson &&
        e1?.reportCode == e2?.reportCode &&
        e1?.lastUpdate == e2?.lastUpdate &&
        e1?.reportStatus == e2?.reportStatus &&
        e1?.reportCompany == e2?.reportCompany &&
        e1?.phaseDate == e2?.phaseDate &&
        e1?.password == e2?.password;
  }

  @override
  int hash(ReportRecord? e) => const ListEquality().hash([
        e?.userData,
        e?.reportTime,
        e?.reportLocation,
        e?.reportType,
        e?.reportDetails,
        e?.witnessList,
        e?.documentList,
        e?.reportedPerson,
        e?.reportCode,
        e?.lastUpdate,
        e?.reportStatus,
        e?.reportCompany,
        e?.phaseDate,
        e?.password
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportRecord;
}
