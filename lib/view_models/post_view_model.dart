import 'package:mvvm_api_arch/models/posts_model.dart';

class PostViewModel {
  PostsModel? postsModel;
  PostViewModel(this.postsModel);
  get id => postsModel?.id;
  get userId => postsModel?.userId;
  get title => postsModel?.title;
  get body => postsModel?.body;
}
