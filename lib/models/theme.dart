// FutureBuilder<List<Noticias>>(
// future: getNoticias(),
// builder: (context, snapshot) {
// if (snapshot.connectionState == ConnectionState.done) {
// return Column(
// children: [
// FutureBuilder<List>(
// future: getAnuncios(),
// builder: (context, snapshot) {
// if (snapshot.connectionState == ConnectionState.done) {
// snapshot.data!.removeAt(0);
// return Row(
// children: [
// ListView.builder(
// itemCount: snapshot.data!.length,
// scrollDirection: Axis.horizontal,
// itemBuilder: (ctx, index) {
// return Image.network(snapshot.data![index]);
// },
// ),
// ],
// );
// } else if (snapshot.connectionState ==
// ConnectionState.waiting) {
// return Container(
// height: 100,
// color: Colors.blue,
// child: const Center(
// child: CircularProgressIndicator(
// color: Colors.white,
// strokeWidth: 2.0,
// ),
// ),
// );
// } else {
// return const Text('Erro');
// }
// }),
// Expanded(
// child: ListView.separated(
// scrollDirection: Axis.vertical,
// separatorBuilder: (context, index) => const Divider(),
// itemCount: 10,
// itemBuilder: (context, index) {
// return Padding(
// padding: const EdgeInsets.only(
// right: 2.0,
// left: 2.0,
// top: 2.0,
// ),
// child: bannerNews(
// context,
// titilo: snapshot.data![index].titilo,
// data: snapshot.data![index].data,
// texto: snapshot.data![index].texto,
// capa: snapshot.data![index].capa,
// src: snapshot.data![index].capa,
// titulo: snapshot.data![index].titilo,
// ),
// );
// },
// ),
// )
// ],
// );
// } else if (snapshot.hasError) {
// return const Center(child: Text('Erro ao Carregar dados'));
// } else {
// return const Center(
// child: CircularProgressIndicator(
// strokeWidth: 2.0,
// ));
// }
// },
// ),