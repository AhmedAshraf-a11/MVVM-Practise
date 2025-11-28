import 'package:mvvm_api_arch/models/posts_model.dart';

abstract class PostsRepo {
  Future<List<PostsModel>> getAllPosts();
  Future<PostsModel> getPostId();
}
