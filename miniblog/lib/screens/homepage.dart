import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniblog/models/blog_model.dart';

import 'package:miniblog/providers/provider.dart';
import 'package:miniblog/screens/add_blog.dart';
import 'package:miniblog/screens/content.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBEBEB),
      appBar: AppBar(
        backgroundColor: const Color(0xffEBEBEB),
        title: const Text("Ana Sayfa"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AddBlog()),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, watch, child) {
          final AsyncValue<List<Blog>> blogsAsyncValue =
              ref.watch(blogProvider);
          return blogsAsyncValue.when(
            data: (blogs) {
              return ListView.builder(
                itemCount: blogs.length,
                itemBuilder: (context, index) {
                  final Blog blog = blogs[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ContentPage(
                                selectedContentId: blog.id.toString())),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            blog.title,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Divider(height: 20),
                          Center(
                            child: SizedBox(
                              height: 200,
                              child: Image.network(blog.thumbnail),
                            ),
                          ),
                          Text("Yazar: ${blog.author}"),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Divider(height: 20, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(child: Text('Error: $error')),
          );
        },
      ),
    );
  }
}
