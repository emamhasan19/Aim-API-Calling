import 'package:api_calling/core/routes/routing_constants.dart';
import 'package:api_calling/features/model/post_model.dart';
import 'package:api_calling/features/pages/details_page.dart';
import 'package:api_calling/features/pages/post_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case postPageRoute:
      return MaterialPageRoute(builder: (context) => const PostPage());

    case detailsPageRoute:
      return MaterialPageRoute(
        builder: (context) =>
            DetailsPage(postModel: settings.arguments as PostModel),
      );

    default:
      return MaterialPageRoute(builder: (context) => const PostPage());
  }
}
