import 'package:flutter/material.dart';

Widget buildContactCard(
  BuildContext context, {
  Widget? icon,
  String? text,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListTile(
          leading: icon,
          title: Text(
            text!,
          ),
        ),
      ),
    ),
  );
}
