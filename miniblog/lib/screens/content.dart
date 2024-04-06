// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniblog/models/blog_model.dart';
import 'package:miniblog/providers/provider.dart';

class ContentPage extends ConsumerStatefulWidget {
  final String selectedContentId;

  const ContentPage({super.key, required this.selectedContentId});

  @override
  // ignore: library_private_types_in_public_api
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends ConsumerState<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBEBEB),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Consumer(
      builder: (context, ref, child) {
        final AsyncValue<List<Blog>> blogsAsyncValue = ref.watch(blogProvider);
        return blogsAsyncValue.when(
          data: (blogs) {
            Blog? selectedBlog;
            try {
              selectedBlog = blogs
                  .firstWhere((blog) => blog.id == widget.selectedContentId);
            } catch (e) {
              // Belirtilen başlığa sahip içerik bulunamadı
              return const Center(
                child: Text('İçerik bulunamadı.'),
              );
            }

            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: 200.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: const Text(''),
                    background: Image.network(
                      selectedBlog.thumbnail,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              selectedBlog.title,
                              style: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const Divider(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Yazar:${selectedBlog.author}',
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                            Text(
                              selectedBlog.content,
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stackTrace) => Center(
            child: Text('Hata: $error'),
          ),
        );
      },
    );
  }
}
