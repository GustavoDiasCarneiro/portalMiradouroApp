import 'package:flutter/material.dart';

Widget myListTile({
  required BuildContext context,
  required String titulo,
  required String subtitulo,
  required String link,
  required Widget route,
}) {
  return ListTile(
    title: Text(titulo),
    subtitle: Text(subtitulo),
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => route),
    ),
  );
}
