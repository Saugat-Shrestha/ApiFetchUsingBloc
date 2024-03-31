import 'dart:convert';

import 'package:apicall/View/features/post/models/post_dat_ui_model.dart';
import 'package:http/http.dart' as http;

class PostRepo {
  static Future<List<PostDataUiModel>> fetchPost() async {
    var client = http.Client();
    List<PostDataUiModel> posts = [];
    try {
      var response = await client
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/"));
      List result = jsonDecode(response.body);
      for (int i = 0; i < result.length; i++) {
        PostDataUiModel post =
            PostDataUiModel.fromMap(result[i] as Map<String, dynamic>);
        posts.add(post);
      }
      return posts;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
