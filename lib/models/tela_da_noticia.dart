import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portal_miradouro/models/home_page.dart';

class NoticiaPageDetalhes extends StatefulWidget {
  final String titulo;
  final String capa;
  final String data;
  final String texto;

  const NoticiaPageDetalhes(this.titulo, this.capa, this.data, this.texto,
      {super.key});

  @override
  State<NoticiaPageDetalhes> createState() => _NoticiaPageDetalhesState();
}

class _NoticiaPageDetalhesState extends State<NoticiaPageDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).maybePop(
              MaterialPageRoute(
                builder: (_) => const HomePage(),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.open_in_new,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark
              .copyWith(systemNavigationBarColor: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, bottom: 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        height: 25,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Center(
                          child: Text(
                            widget.data,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Center(
                        child: Text(
                          widget.titulo,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      widget.capa,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    widget.texto,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
