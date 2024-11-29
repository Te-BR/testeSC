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

// DO NOT REMOVE OR MODIFY THE CODE ABOVE

import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

Future<String> sendEmailGmail(
    String recipientEmail, String subject, String body) async {
  final String username = 'marketingdoubleit@gmail.com';
  final String password = 'eszb eoof zint jlxl';

  final smtpServer = gmail(username, password);

  final message = Message()
    ..from = Address(username, 'SpotCompliance')
    ..recipients.add(recipientEmail)
    ..subject = subject
    ..text = body;

  try {
    final sendReport = await send(message, smtpServer);
    return 'Email enviado com sucesso: ${sendReport.toString()}';
  } catch (e) {
    return 'Erro ao enviar email: $e';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
