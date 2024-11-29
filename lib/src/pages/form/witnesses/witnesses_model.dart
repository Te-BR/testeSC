import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'witnesses_widget.dart' show WitnessesWidget;
import 'package:flutter/material.dart';

class WitnessesModel extends FlutterFlowModel<WitnessesWidget> {
  ///  Local state fields for this page.

  List<WitnessStruct> witnesses = [];
  void addToWitnesses(WitnessStruct item) => witnesses.add(item);
  void removeFromWitnesses(WitnessStruct item) => witnesses.remove(item);
  void removeAtIndexFromWitnesses(int index) => witnesses.removeAt(index);
  void insertAtIndexInWitnesses(int index, WitnessStruct item) =>
      witnesses.insert(index, item);
  void updateWitnessesAtIndex(int index, Function(WitnessStruct) updateFn) =>
      witnesses[index] = updateFn(witnesses[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
