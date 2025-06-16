import 'package:first_flutter_app/feature/hello/component/TestComponent.dart';
import 'package:first_flutter_app/feature/hello/viewModel/TestViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool _hasFetched = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasFetched) {
      final vm = Provider.of<TestViewModel>(context, listen: false);
      vm.fetchPosts();
      _hasFetched = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<TestViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Test Posts')),
      body: vm.isLoading
          ? Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              color: Colors.red,
              onRefresh: () async {
                await vm.fetchPosts(); // 스크롤로 새로고침
              },
              child: ListView.builder(
                padding: EdgeInsets.all(20),
                itemCount: vm.posts.length,
                itemBuilder: (context, index) {
                  final post = vm.posts[index];
                  return Testcomponent(viewModel: post);
                },
              ),
            ),
    );
  }
}
