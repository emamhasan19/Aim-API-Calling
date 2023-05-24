// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, use_build_context_synchronously

import 'dart:convert';

import 'package:api_calling/core/colors.dart';
import 'package:api_calling/features/model/post_model.dart';
import 'package:api_calling/features/widgets/list_tile_view.dart';
import 'package:api_calling/features/widgets/show_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List<PostModel> posts = [];

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    const url = 'https://jsonplaceholder.typicode.com/posts';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      setState(() {
        final jsonData = jsonDecode(response.body);
        posts = (jsonData as List)
            .map((itemJson) => PostModel.fromJson(itemJson))
            .toList();
      });
      ShowSnackBarMessage(context, 'Data fetched successfully!', "dark");
    } else {
      ShowSnackBarMessage(context,
          'Failed to load data. HTTP status: ${response.statusCode}', "light");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'images/api_icon.svg', // Replace with the path to your SVG file
              height: 30,
              width: 30,
              color: Palette.secondary_color,
              // color: Palette.secondary_color,
            ),
            const SizedBox(width: 15),
            const Text(
              'AIM API',
              style: TextStyle(
                color: Palette.secondary_color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return ListTileView(context, post, index);
        },
      ),
    );
  }
}
