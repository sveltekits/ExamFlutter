import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// [프로젝트 이름]/[lib 폴더로부터의 위치]/파일명.dart
// import 'package:blog_web_app/screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(HomeScreen());
}

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  WebViewController webViewController = WebViewController()
    ..loadRequest(Uri.parse('https://blog.codefactory.ai'))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Hello'),
            centerTitle: true,
          ),
          body: WebViewWidget(
            controller: webViewController,
          )),
    );
  }
}
