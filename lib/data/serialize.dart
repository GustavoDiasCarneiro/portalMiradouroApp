// To parse this JSON data, do
//
//     final noticias = noticiasFromJson(jsonString);

import 'dart:convert';

List<Noticias> noticiasFromJson(String str) => List<Noticias>.from(json.decode(str).map((x) => Noticias.fromJson(x)));

String noticiasToJson(List<Noticias> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Noticias {
  Noticias({
    required this.capa,
    required this.data,
    required this.texto,
    required this.titilo,
  });

  final String capa;
  final String data;
  final String texto;
  final String titilo;

  factory Noticias.fromJson(Map<String, dynamic> json) => Noticias(
    capa: json["capa"] == null ? null : json["capa"],
    data: json["data"] == null ? null : json["data"],
    texto: json["texto"] == null ? null : json["texto"],
    titilo: json["titilo"] == null ? null : json["titilo"],
  );

  Map<String, dynamic> toJson() => {
    "capa": capa == null ? null : capa,
    "data": data == null ? null : data,
    "texto": texto == null ? null : texto,
    "titilo": titilo == null ? null : titilo,
  };
}
