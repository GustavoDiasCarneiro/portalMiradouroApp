import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

const String _url =
    'http://servicos.cptec.inpe.br/XML/cidade/7dias/-22.90/-47.06/previsaoLatLon.xml';

Future getWeather() async {
  final resposta = await http.get(Uri.parse(_url));
  final res = resposta.body;
  Xml2Json xml = Xml2Json();
  xml.parse(res);

  return xml.toParker();
}
