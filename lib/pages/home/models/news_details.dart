import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portal_miradouro/models/home_page.dart';

import '../elements/icons.dart';

class NewsDetails extends StatefulWidget {
  final String titulo;
  final String capa;
  final String data;
  final String texto;

  const NewsDetails(this.titulo, this.capa, this.data, this.texto, {super.key});

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyIconButton(
          icon: Ionicons.arrow_back_outline,
          onTap: Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        actions: [],
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
            statusBarBrightness: Brightness.dark,
            systemNavigationBarColor: Colors.white),
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(widget.capa),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(widget.titulo),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
