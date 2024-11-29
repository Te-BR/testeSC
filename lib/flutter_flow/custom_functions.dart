import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String randomString() {
  // create a random a string captalized with numbers and letters with 6 digits
  final random = math.Random();
  final codeUnits = List.generate(6, (index) {
    if (index.isEven) {
      return random.nextInt(26) + 65; // uppercase letters
    } else {
      return random.nextInt(10) + 48; // numbers
    }
  });

  return String.fromCharCodes(codeUnits);
}

String generateReportHTML(
  ReporterDataStruct reporterData,
  String reportTime,
  String reportLocation,
  String reportType,
  ReportDetailsStruct? reportDetails,
  List<WitnessStruct>? witnessList,
  List<DocumentStruct>? documents,
  ReportedPersonStruct reportedPerson,
  String? reportCompany,
  String reportID,
) {
  String reporterSection = '''
    <div class="section">
      <h2>Informações do Denunciante</h2>
      <p><strong>Nome:</strong> ${reporterData.name ?? 'Não informado'}</p>
      <p><strong>Cargo:</strong> ${reporterData.role ?? 'Não informado'}</p>
      <p><strong>Local de Trabalho:</strong> ${reporterData.workLocation ?? 'Não informado'}</p>
      <p><strong>Email:</strong> ${reporterData.email ?? 'Não informado'}</p>
    </div>
  ''';

  String witnessesSection = witnessList != null && witnessList.isNotEmpty
      ? '''
    <div class="section">
      <h2>Testemunhas</h2>
      <ul>
        ${witnessList.map((witness) => '''
          <li>
            <p><strong>Nome:</strong> ${witness.witnessName ?? 'Não informado'}</p>
            <p><strong>Cargo:</strong> ${witness.witnessRole ?? 'Não informado'}</p>
            <p><strong>Descrição:</strong> ${witness.witnessDescription ?? 'Não informado'}</p>
            <p><strong>Contato:</strong> ${witness.witnessContact ?? 'Não informado'}</p>
          </li>
        ''').join('')}
      </ul>
    </div>
    '''
      : '<p>Sem testemunhas informadas.</p>';

  String documentsSection = documents != null && documents.isNotEmpty
      ? '''
    <div class="section">
      <h2>Documentos Anexados</h2>
      <ul>
        ${documents.map((doc) => '''
          <li>
            <p><strong>Nome:</strong> ${doc.documentName ?? 'Sem nome'}</p>
            <p><strong>Link:</strong> <a href="${doc.documentLink}">${doc.documentLink}</a></p>
          </li>
        ''').join('')}
      </ul>
    </div>
    '''
      : '<p>Sem documentos anexados.</p>';

  String detailsSection = reportDetails != null
      ? '''
    <div class="section">
      <h2>Detalhes da Denúncia</h2>
      <p><strong>Descrição:</strong> ${reportDetails.reportText ?? 'Não informado'}</p>
      <p><strong>Frequência:</strong> ${reportDetails.reportFrequency ?? 'Não informado'}</p>
      <p><strong>Contexto:</strong> ${reportDetails.reportContext ?? 'Não informado'}</p>
    </div>
    '''
      : '<p>Sem detalhes adicionais fornecidos.</p>';

  String reportedPersonSection = '''
    <div class="section">
      <h2>Pessoa Denunciada</h2>
      <p><strong>Nome:</strong> ${reportedPerson.reportedName ?? 'Não informado'}</p>
      <p><strong>Cargo:</strong> ${reportedPerson.reportedRole ?? 'Não informado'}</p>
      <p><strong>Local de Trabalho:</strong> ${reportedPerson.reportedWorkLocation ?? 'Não informado'}</p>
    </div>
  ''';

  String companySection = '''
    <div class="section">
      <h2>Empresa</h2>
      <p>${reportCompany ?? 'Não informado'}</p>
    </div>
  ''';

  String htmlReport = '''
    <!DOCTYPE html>
    <html lang="pt-BR">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Relatório de Denúncia</title>
      <style>
        body {font-family: Arial, sans-serif; line-height: 1.6; color: #333; background-color: #f9f9f9; padding: 20px;} 
        .container {max-width: 800px; margin: 0 auto; background: #ffffff; border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); overflow: hidden; padding: 20px;} 
        h1, h2 {color: #2c3e50;} 
        h1 {font-size: 24px; border-bottom: 2px solid #e74c3c; padding-bottom: 10px;} 
        .section {margin-bottom: 20px;} 
        ul {padding-left: 20px;} 
        ul li {margin-bottom: 10px;} 
        a {color: #3498db; text-decoration: none;} 
        a:hover {text-decoration: underline;} 
        p {margin: 5px 0;}
      </style>
    </head>
    <body>
      <div class="container">
        <h1>Relatório de Denúncia $reportID</h1>
        $reporterSection
        <div class="section">
          <h2>Informações da Denúncia</h2>
          <p><strong>Data e Hora:</strong> $reportTime</p>
          <p><strong>Local:</strong> $reportLocation</p>
          <p><strong>Tipo:</strong> $reportType</p>
        </div>
        $detailsSection
        $reportedPersonSection
        $witnessesSection
        $documentsSection
        $companySection
      </div>
    </body>
    </html>
  ''';

  return htmlReport.replaceAll('"', '\\"').replaceAll('\n', '').trim();
}
