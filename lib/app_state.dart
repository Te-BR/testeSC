import 'package:flutter/material.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<bool> _step2 = [false, false, false, false];
  List<bool> get step2 => _step2;
  set step2(List<bool> value) {
    _step2 = value;
  }

  void addToStep2(bool value) {
    step2.add(value);
  }

  void removeFromStep2(bool value) {
    step2.remove(value);
  }

  void removeAtIndexFromStep2(int index) {
    step2.removeAt(index);
  }

  void updateStep2AtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    step2[index] = updateFn(_step2[index]);
  }

  void insertAtIndexInStep2(int index, bool value) {
    step2.insert(index, value);
  }

  ReporterDataStruct _reporterData = ReporterDataStruct();
  ReporterDataStruct get reporterData => _reporterData;
  set reporterData(ReporterDataStruct value) {
    _reporterData = value;
  }

  void updateReporterDataStruct(Function(ReporterDataStruct) updateFn) {
    updateFn(_reporterData);
  }

  DateTime? _reportTime;
  DateTime? get reportTime => _reportTime;
  set reportTime(DateTime? value) {
    _reportTime = value;
  }

  String _reportLocation = '';
  String get reportLocation => _reportLocation;
  set reportLocation(String value) {
    _reportLocation = value;
  }

  String _reportType = '';
  String get reportType => _reportType;
  set reportType(String value) {
    _reportType = value;
  }

  ReportDetailsStruct _reportDetails = ReportDetailsStruct();
  ReportDetailsStruct get reportDetails => _reportDetails;
  set reportDetails(ReportDetailsStruct value) {
    _reportDetails = value;
  }

  void updateReportDetailsStruct(Function(ReportDetailsStruct) updateFn) {
    updateFn(_reportDetails);
  }

  List<WitnessStruct> _witnessList = [];
  List<WitnessStruct> get witnessList => _witnessList;
  set witnessList(List<WitnessStruct> value) {
    _witnessList = value;
  }

  void addToWitnessList(WitnessStruct value) {
    witnessList.add(value);
  }

  void removeFromWitnessList(WitnessStruct value) {
    witnessList.remove(value);
  }

  void removeAtIndexFromWitnessList(int index) {
    witnessList.removeAt(index);
  }

  void updateWitnessListAtIndex(
    int index,
    WitnessStruct Function(WitnessStruct) updateFn,
  ) {
    witnessList[index] = updateFn(_witnessList[index]);
  }

  void insertAtIndexInWitnessList(int index, WitnessStruct value) {
    witnessList.insert(index, value);
  }

  List<DocumentStruct> _documents = [];
  List<DocumentStruct> get documents => _documents;
  set documents(List<DocumentStruct> value) {
    _documents = value;
  }

  void addToDocuments(DocumentStruct value) {
    documents.add(value);
  }

  void removeFromDocuments(DocumentStruct value) {
    documents.remove(value);
  }

  void removeAtIndexFromDocuments(int index) {
    documents.removeAt(index);
  }

  void updateDocumentsAtIndex(
    int index,
    DocumentStruct Function(DocumentStruct) updateFn,
  ) {
    documents[index] = updateFn(_documents[index]);
  }

  void insertAtIndexInDocuments(int index, DocumentStruct value) {
    documents.insert(index, value);
  }

  ReportedPersonStruct _reportedPerson = ReportedPersonStruct();
  ReportedPersonStruct get reportedPerson => _reportedPerson;
  set reportedPerson(ReportedPersonStruct value) {
    _reportedPerson = value;
  }

  void updateReportedPersonStruct(Function(ReportedPersonStruct) updateFn) {
    updateFn(_reportedPerson);
  }

  String _reportCompany = '';
  String get reportCompany => _reportCompany;
  set reportCompany(String value) {
    _reportCompany = value;
  }

  DocumentReference? _createdReportDoc;
  DocumentReference? get createdReportDoc => _createdReportDoc;
  set createdReportDoc(DocumentReference? value) {
    _createdReportDoc = value;
  }

  String _reportPassword = '';
  String get reportPassword => _reportPassword;
  set reportPassword(String value) {
    _reportPassword = value;
  }

  DocumentReference? _updatedReportDoc;
  DocumentReference? get updatedReportDoc => _updatedReportDoc;
  set updatedReportDoc(DocumentReference? value) {
    _updatedReportDoc = value;
  }
}
