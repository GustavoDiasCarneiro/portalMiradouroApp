import 'package:flutter/material.dart';


import '../../../data/serialize.dart';
import '../../../data/services.dart';
import '../elements/banner_news.dart';
import '../elements/skeleton_loading.dart';

class NavyBarHome extends StatelessWidget {
  const NavyBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Noticias>>(
      future: getNoticias(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Column(
            children: [
              FutureBuilder<List>(
                  future: getAnuncios(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      snapshot.data!.removeAt(0);
                      return const SizedBox();
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return const SizedBox();
                    } else {
                      return const Text('Erro');
                    }
                  }),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (context, index) => Container(
                    color: Colors.white,
                    child: const Divider(),
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return bannerNews(
                      context,
                      titilo: snapshot.data![index].titilo,
                      data: snapshot.data![index].data,
                      texto: snapshot.data![index].texto,
                      capa: snapshot.data![index].capa,
                      src: snapshot.data![index].capa,
                      titulo: snapshot.data![index].titilo,
                    );
                  },
                ),
              )
            ],
          );
        } else if (snapshot.hasError) {
          return Center(
              child: Image.asset(
            'lib/assets/error.png',
            scale: 6,
          ));
        } else {
          return skeletonLoading();
        }
      },
    );
  }
}
