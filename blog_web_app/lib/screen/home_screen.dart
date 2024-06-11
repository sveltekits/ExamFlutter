import 'package:flutter/material.dart';

// 웹뷰 플러그인 불러오기
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  WebViewController webViewController = WebViewController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('HelloWorld'),
          centerTitle: true,
        ),
        body: WebViewWidget(
          controller: webViewController,
        ));
  }
}
