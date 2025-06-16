import 'package:first_flutter_app/feature/hello/model/TestModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TestViewModel extends ChangeNotifier {
  List<TestModel> _list = [];
  List<TestModel> get posts => _list;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> fetchPosts() async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if(response.statusCode == 200) {
        final jsonList = jsonDecode(response.body) as List;
        _list = jsonList.map((e) => TestModel.fromJson(e)).toList();
      }
    } catch(error) {
      print('Error: $error');
    }

    _isLoading = false;
    notifyListeners();
  }
}