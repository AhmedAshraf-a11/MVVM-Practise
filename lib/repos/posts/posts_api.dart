import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mvvm_api_arch/models/posts_model.dart';
import 'package:mvvm_api_arch/repos/posts/posts_repo.dart';

class PostsApi extends PostsRepo {
  @override
  Future<List<PostsModel>> getAllPosts() async {
    List<PostsModel> posts = [];
    try {
      var response = await Dio().get(
        'https://jsonplaceholder.typicode.com/posts',
      );
      var list = response.data as List;
      posts = list.map((post) => PostsModel.fromJson(post)).toList();
    } catch (e) {
      log(e.toString());
    }
    return posts;
  }

  @override
  Future<PostsModel> getPostId() {
    // TODO: implement getPostId
    throw UnimplementedError();
  }
}
