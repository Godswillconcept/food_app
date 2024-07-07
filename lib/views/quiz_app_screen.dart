// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:food_app/models/quiz.dart';
import 'package:food_app/views/utils/app_text.dart';

class QuizAppScreen extends StatefulWidget {
  const QuizAppScreen({Key? key}) : super(key: key);

  @override
  _QuizAppScreenState createState() => _QuizAppScreenState();
}

class _QuizAppScreenState extends State<QuizAppScreen> {
  int _questionIndex = 0;
  bool isCorrect = false;
  Color? answerColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.brown.shade100,
      body: Stack(
        children: [
          Container(
            height: 150,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.brown.shade300,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(80)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            data: "Hi Sharon,",
                            color: Colors.brown.shade700,
                            fsize: 25.0,
                            fweight: FontWeight.bold,
                          ),
                          AppText(
                            data: "Good to be back! Try some assessment",
                            color: Colors.brown.shade700,
                            fsize: 16.0,
                            fweight: FontWeight.w500,
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("images/learning/profile.png"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LinearProgressIndicator(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Text(
                              "${_questionIndex + 1}",
                              style: TextStyle(
                                color: Colors.green.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '/ ${quizBank.length}',
                              style: TextStyle(
                                color: Colors.brown.shade100,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14.4),
                      border: Border.all(
                          color: Colors.brown.shade500,
                          style: BorderStyle.solid),
                    ),
                    height: 120.0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        quizBank[_questionIndex].question,
                        style: TextStyle(
                          fontSize: 16.9,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _checkAnswer(
                                  quizBank[_questionIndex].options[0],
                                  context,
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: isCorrect &&
                                          quizBank[_questionIndex].options[0] ==
                                              quizBank[_questionIndex].answer
                                      ? Colors.green
                                      : isCorrect &&
                                              quizBank[_questionIndex]
                                                      .options[0] !=
                                                  quizBank[_questionIndex]
                                                      .answer
                                          ? Colors.red
                                          : Colors.transparent,
                                  border: Border.all(color: Colors.brown),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  quizBank[_questionIndex].options[0],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _checkAnswer(
                                  quizBank[_questionIndex].options[1],
                                  context,
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: isCorrect &&
                                          quizBank[_questionIndex].options[1] ==
                                              quizBank[_questionIndex].answer
                                      ? Colors.green
                                      : isCorrect &&
                                              quizBank[_questionIndex]
                                                      .options[1] !=
                                                  quizBank[_questionIndex]
                                                      .answer
                                          ? Colors.red
                                          : Colors.transparent,
                                  border: Border.all(color: Colors.brown),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  quizBank[_questionIndex].options[1],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _checkAnswer(
                                  quizBank[_questionIndex].options[2],
                                  context,
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: isCorrect &&
                                      quizBank[_questionIndex].options[0] ==
                                          quizBank[_questionIndex].answer
                                      ? Colors.green
                                      : isCorrect &&
                                              quizBank[_questionIndex]
                                                      .options[0] !=
                                                  quizBank[_questionIndex]
                                                      .answer
                                          ? Colors.red
                                          : Colors.transparent,
                                  border: Border.all(color: Colors.brown),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  quizBank[_questionIndex].options[2],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _checkAnswer(
                                  quizBank[_questionIndex].options[3],
                                  context,
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: isCorrect &&
                                          quizBank[_questionIndex].options[3] ==
                                              quizBank[_questionIndex].answer
                                      ? Colors.green
                                      : isCorrect &&
                                              quizBank[_questionIndex]
                                                      .options[3] !=
                                                  quizBank[_questionIndex]
                                                      .answer
                                          ? Colors.red
                                          : Colors.transparent,
                                  border: Border.all(color: Colors.brown),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  quizBank[_questionIndex].options[3],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () => _prevQuestion(),
                        icon: Icon(Icons.arrow_back_rounded),
                        label: Text('PREV'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () => _nextQuestion(),
                        icon: Icon(Icons.arrow_forward_rounded),
                        label: Text('NEXT'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.exit_to_app),
                        label: Text('END'),
                      ),
                    ],
                  ),
                )
                // Spacer(),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: <Widget>[
                //     ElevatedButton(
                //       onPressed: () => _checkAnswer(true, context),
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.brown.shade300,
                //       ),
                //       child: Text(
                //         'True',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     ),
                //     ElevatedButton(
                //       onPressed: () => _checkAnswer(false, context),
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.brown.shade300,
                //       ),
                //       child: Text(
                //         'False',
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     ),
                //     ElevatedButton(
                //       onPressed: () => _nextQuestion(),
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.brown.shade300,
                //       ),
                //       child: Icon(
                //         Icons.arrow_forward_ios_outlined,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _nextQuestion() {
    setState(() {
      _questionIndex = ((_questionIndex + 1) % quizBank.length);
    });
  }

  _prevQuestion() {
    setState(() {
      _questionIndex = ((_questionIndex - 1) % quizBank.length);
    });
  }

  _checkAnswer(String option, BuildContext context) {
    Color? newAnswerColor; // Define a new local variable.

    if (option == quizBank[_questionIndex].answer) {
      final snackBar = SnackBar(
        content: Text('Correct'),
        backgroundColor: Colors.green,
        duration: Duration(milliseconds: 500),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      debugPrint('Yes Correct!');
      _nextQuestion();

      newAnswerColor = Colors.green; // Set the color for a correct answer.
    } else {
      debugPrint("Incorrect");
      final snackBar = SnackBar(
        content: Text('Incorrect'),
        backgroundColor: Colors.red,
        duration: Duration(milliseconds: 500),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      newAnswerColor = Colors.red; // Set the color for an incorrect answer.
    }

    setState(() {
      answerColor =
          newAnswerColor; // Update the answerColor and trigger a rebuild.
    });
  }
}
