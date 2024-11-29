// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

Future<String> getUserAddress() async {
  try {
    // Verifica permissão de localização
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return jsonEncode({'error': 'Permissão de localização negada'});
      }
    }

    // Pega a posição atual do usuário
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    // Realiza o Geocoding para obter endereço
    List<Placemark> placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    if (placemarks.isNotEmpty) {
      Placemark place = placemarks.first;
      return jsonEncode({
        'address':
            '${place.street}, ${place.subLocality}, ${place.locality}, ${place.administrativeArea}',
        'postalCode': place.postalCode ?? 'CEP não encontrado',
      });
    } else {
      return jsonEncode({'error': 'Endereço não encontrado'});
    }
  } catch (e) {
    return jsonEncode({'error': 'Erro ao obter localização: $e'});
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
