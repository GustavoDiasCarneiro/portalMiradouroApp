// To parse this JSON data, do
//
//     final anuncios = anunciosFromJson(jsonString);

import 'dart:convert';

List<String> anunciosFromJson(String str) => List<String>.from(json.decode(str).map((x) => x));

String anunciosToJson(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));
