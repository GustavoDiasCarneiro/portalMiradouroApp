import 'package:flutter/material.dart';

import '../models/news_details.dart';

Widget bannerNews(
  context, {
  required String src,
  required String titulo,
  required String titilo,
  required String capa,
  required String data,
  required String texto,
}) {
  return InkWell(
    onTap: () => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => NewsDetails(
          titulo,
          capa,
          data,
          texto,
        ),
      ),
    ),
    child: Container(
      padding: const EdgeInsets.all(12.0),
      width: double.infinity,
      height: 120,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.black.withOpacity(0.07),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                src,
                fit: BoxFit.cover,
                scale: 5.5,
              ),
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  titilo,
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
