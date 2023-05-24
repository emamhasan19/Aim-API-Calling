// ignore_for_file: non_constant_identifier_names

import 'package:api_calling/core/colors.dart';
import 'package:api_calling/core/routes/routing_constants.dart';
import 'package:api_calling/features/model/post_model.dart';
import 'package:flutter/material.dart';

Widget ListTileView(BuildContext context, PostModel post, int index) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, detailsPageRoute, arguments: post);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
      child: Card(
        color: index % 2 == 0 ? Palette.secondary_color : Palette.primary_color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              color: index % 2 == 0
                  ? Palette.primary_color
                  : Palette.secondary_color,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            width: 40,
            child: Center(
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: index % 2 == 0
                      ? Palette.secondary_color
                      : Palette.primary_color,
                ),
              ),
            ),
          ),
          title: Text(
            (post.title).substring(0, 12),
            style: TextStyle(
              fontSize: 20,
              color: index % 2 == 0
                  ? Palette.primary_color
                  : Palette.secondary_color,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            '${(post.body).substring(0, 10)}...',
            style: TextStyle(
              fontSize: 16,
              color: index % 2 == 0
                  ? Palette.primary_color
                  : Palette.secondary_color,
            ),
          ),
          trailing: Icon(
            index % 2 == 0 ? Icons.api : Icons.exit_to_app,
            size: 30,
            color: index % 2 == 0
                ? Palette.primary_color
                : Palette.secondary_color,
          ),
        ),
      ),
    ),
  );
}
