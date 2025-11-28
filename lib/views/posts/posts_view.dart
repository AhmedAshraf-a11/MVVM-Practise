import 'package:flutter/material.dart';
import 'package:mvvm_api_arch/repos/posts/posts_api.dart';
import 'package:mvvm_api_arch/view_models/post_view_model.dart';
import 'package:mvvm_api_arch/view_models/posts_view_model.dart';

class PostsView extends StatelessWidget {
  PostsView({super.key});
  var postsViewModel = PostsViewModel(PostsApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(postsViewModel.title)),
      body: Center(
        child: FutureBuilder<List<PostViewModel>>(
          future: postsViewModel.fetchAllPosts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              var posts = snapshot.data;
              return ListView.builder(
                itemCount: posts?.length,
                itemBuilder: (context, index) =>
                    ListTile(title: Text(posts![index].title)),
              );
            } else {
              return Center(child: Text("there has been error"));
            }
          },
        ),
      ),
    );
  }
}
