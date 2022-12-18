import 'package:portal_miradouro/data/serialize.dart';
import 'package:http/http.dart' as http;
import 'package:portal_miradouro/data/seriallize_anuncios.dart';

Future<List<Noticias>> getNoticias() async {
  final resposta = await http
      .get(Uri.parse('https://portalmiradouro.gusthfly.repl.co/noticias'));
  return noticiasFromJson(resposta.body);
}

Future<List> getAnuncios() async {
  final resposta = await http
      .get(Uri.parse('https://portalmiradouro.gusthfly.repl.co/anuncios'));

  return anunciosFromJson(resposta.body);
}
