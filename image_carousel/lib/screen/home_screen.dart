import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState(); // 부모 initState() 실행
    Timer.periodic(
      // ➍ Timer.periodic() 등록
      Duration(seconds: 3),
      (timer) {
        print('실행!');
        int? nextPage = pageController.page?.toInt();

        // ➋
        if (nextPage == null) {
          return;
        }
        // ➌
        if (nextPage == 4) {
          nextPage = 0;
        } else {
          nextPage++;
        }
        pageController.animateToPage(
          // ➍ 페이지 변경
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1, 2, 3, 4, 5]
            .map(
              (number) => Image.asset('assets/img/image_$number.jpeg'),
            )
            .toList(),
      ),
    );
  }
}
