class Weather {
  Weather({
    required this.cidade,
  });

  final Cidade cidade;
}

class Cidade {
  Cidade({
    required this.nome,
    required this.uf,
    required this.atualizacao,
    required this.previsao,
  });

  final String nome;
  final String uf;
  final DateTime atualizacao;
  final List<Previsao> previsao;
}

class Previsao {
  Previsao({
    required this.dia,
    required this.tempo,
    required this.maxima,
    required this.minima,
    required this.iuv,
  });

  final DateTime dia;
  final String tempo;
  final String maxima;
  final String minima;
  final String iuv;
}
