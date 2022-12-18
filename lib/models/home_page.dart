import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portal_miradouro/models/tela_da_noticia.dart';
import '../data/services.dart';
import '../data/serialize.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: const Text(
          'Portal Miradouro',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark
            .copyWith(systemNavigationBarColor: Colors.white),
        child: FutureBuilder<List<Noticias>>(
          future: getNoticias(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  FutureBuilder<List>(
                      future: getAnuncios(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          snapshot.data!.removeAt(0);
                          return Container(
                            margin: const EdgeInsets.only(bottom: 12.0),
                              color: Colors.blue,
                              padding: const EdgeInsets.only(
                                  bottom: 12.0),
                              height: 100,
                              width: double.infinity,
                              child: CarouselSlider(
                                items: snapshot.data
                                    ?.map((e) => Expanded(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              e,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                  pageSnapping: false,
                                  enableInfiniteScroll: true,
                                  enlargeCenterPage: true,
                                  autoPlay: true,
                                  autoPlayInterval: const Duration(seconds: 3),
                                  autoPlayAnimationDuration: const Duration(milliseconds: 500)
                                ),
                              ));
                        } else if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Container(
                            height: 100,
                            color: Colors.blue,
                            child: const Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2.0,
                              ),
                            ),
                          );
                        } else {
                          return const Text('Erro');
                        }
                      }),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 12),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data![index].titilo),
                          subtitle: Text(snapshot.data![index].data),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => NoticiaPageDetalhes(
                                snapshot.data![index].titilo,
                                snapshot.data![index].capa,
                                snapshot.data![index].data,
                                snapshot.data![index].texto,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              );
            } else if (snapshot.hasError) {
              return const Center(child: Text('Erro ao Carregar dados'));
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                strokeWidth: 2.0,
              ));
            }
          },
        ),
      ),
    );
  }
}
