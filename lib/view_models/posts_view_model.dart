import 'package:mvvm_api_arch/models/posts_model.dart';
import 'package:mvvm_api_arch/repos/posts/posts_repo.dart';
import 'package:mvvm_api_arch/view_models/post_view_model.dart';

class PostsViewModel {
  final String title = "All Posts";
  PostsRepo? postsRepo;
  PostsViewModel(this.postsRepo);
  // I want to convert the list of models (raw data) to a list of view models (UI)
  Future<List<PostViewModel>> fetchAllPosts() async {
    List<PostsModel> list = await postsRepo!.getAllPosts();
    return list.map((post) => PostViewModel(post)).toList();
  }
}
