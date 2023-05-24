import 'package:api_calling/core/colors.dart';
import 'package:api_calling/features/model/post_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final PostModel postModel;

  const DetailsPage({super.key, required this.postModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Palette.primary_color,
        title: const Center(
          child: Text(
            "API Details",
            style: TextStyle(
              color: Palette.secondary_color,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              color: Palette.secondary_color,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        postModel.title,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Palette.primary_color,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              color: Palette.primary_color,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  postModel.body,
                  style:
                      const TextStyle(fontSize: 20, color: Palette.white_color),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
