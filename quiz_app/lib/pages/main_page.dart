import 'package:flutter/material.dart';
import 'package:quiz_app/pages/quiz_card.dart';
import 'package:quiz_app/quiz_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var pageController = PageController(viewportFraction: 0.8);
  List<Icon> result = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.pinkAccent,
            Colors.blueAccent,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                pageController.previousPage(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                );
              },
              icon: Icon(Icons.navigate_before)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: result,
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  pageController.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeIn);
                },
                icon: Icon(Icons.navigate_next))
          ],
        ),
        body: PageView.builder(
          controller: pageController,
          itemCount: QuizList().quizs.length,
          itemBuilder: (BuildContext context, int index) {
            return QuizCard(
              question: QuizList().quizs[index]["question"],
              options: QuizList().quizs[index]["options"],
              answer: QuizList().quizs[index]["answer"],
              onCorrect: () {
                result.add(Icon(Icons.circle));
                pageController.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeIn);
                setState(() {});
              },
              onIncorrect: () {
                result.add(Icon(Icons.close));
                pageController.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeIn);
                setState(() {});
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          result.clear();
        }),
      ),
    );
  }
}
