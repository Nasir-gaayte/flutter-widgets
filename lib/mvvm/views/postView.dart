import 'package:flutter/material.dart';
import 'package:flutter_widget/mvvm/model_views/postVewModel.dart';
import 'package:provider/provider.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewPosts = Provider.of<PostViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Post View'),
        ),
        body: viewPosts.isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: viewPosts.posts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(viewPosts.posts[index].title),
                    subtitle: Text(viewPosts.posts[index].body),
                  );
                },
              ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            viewPosts.fetchPosts();
          },
        ));
  }
}
