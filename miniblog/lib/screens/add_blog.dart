import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddBlog extends StatefulWidget {
  const AddBlog({super.key});

  @override
  State<AddBlog> createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  final _formKey = GlobalKey<FormState>();
  String blogTitle = "";
  String blogContent = "";
  String author = "";
  XFile? selectedImage;

  void _submit() async {
    if (selectedImage != null) {
      Uri url = Uri.parse("https://tobetoapi.halitkalayci.com/api/Articles");

      var request = http.MultipartRequest("POST", url);
      request.fields["Title"] = blogTitle;
      request.fields["Content"] = blogContent;
      request.fields["Author"] = author;

      final file =
          await http.MultipartFile.fromPath("File", selectedImage!.path);
      request.files.add(file);

      final response = await request.send();

      if (response.statusCode == 201) {
        //başarılı
        // ignore: use_build_context_synchronously
        Navigator.pop(context);
      }
    }
  }

  void _pickImage() async {
    final imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      selectedImage = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yeni Blog Ekle"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      _pickImage();
                    },
                    child: const Text("Fotoğraf Seç")),
                if (selectedImage != null)
                  Image.file(File(selectedImage!.path)),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(
                      "Blog Başlığını Giriniz",
                    ),
                  ),
                  onSaved: (newValue) {
                    blogTitle = newValue!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Blog başlığı boş olamaz.";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(
                      "Blog içeriğini Giriniz",
                    ),
                  ),
                  onSaved: (newValue) {
                    blogContent = newValue!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Blog içeriği boş olamaz.";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(
                      "Yazar ismini giriniz",
                    ),
                  ),
                  onSaved: (newValue) {
                    author = newValue!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "yazar ismi boş bırakılmaz";
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        _submit(); // _submit fonksiyonunu burada çağırın
                      }
                    },
                    child: const Text("Kaydet"),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
