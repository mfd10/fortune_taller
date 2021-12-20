import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int answerIndex = 0;
  List<String> answers = [
    'Click it and take the future ',
    'LOVE: Today, you have to be a little more cautious in your love and relationship life. Are you sure that you understand him correctly on every subject?',
    'LOVE: You may want to take control of your love and relationship life and direct your togetherness as you wish. You should consider how this wish will benefit a balanced relationship.',
    'LOVE: You may find that your emotions are a little erratic today. There is a natural feeling of electricity that makes you start your day in a way you have never done before. Your heart always tells the truth.',
    'LOVE: Your emotions often overpower your rational thinking, and you end up with a deep emotional turmoil. Do not ignore your heart by thinking too logically. Your goal is to find the balance between the two.',
    'LOVE: Do not feel bad emotionally, your intuition is strong. Try to understand your loverss feelings with these intuitions. Sometimes you just need to have fun, relax and have fun together!',
    'MONEY: There are some expenses that have been on your mind for a long time, ask yourself how much you really need them today and cancel some of them. Make a small donation to a charity today and you will feel much better.',
    'MONEY: We are entering periods that may disrupt the balance of your cash flow. You should definitely sit at the desk and make a budget calculation, do not act without being sure of your income and expenditure balance for the next 3 months',
    'MONEY: Today can be a day when you have a high sense of helping, supporting and serving others, you can take part in charity work.',
    'MONEY: Your self-confidence is very high today, but it may not do you much good, your connections may be suspicious of their support. Act calmly, take a step back, and care more about your health than money',
    'MONEY: You should pay attention to the details of our financial resources this term. In addition, you can make a decision on a matter that has occupied you for a long time in financial matters and expenses, ask your relatives or spouse for help while making a decision.',
    'ADVICE: Do not hesitate to ask people questions by highlighting your curious personality today',
    'ADVICE: Today you may find that things you never noticed before are always there, just try to be a little more careful',
    'ADVICE: You can try to be more active and giving in your bilateral relations today, start listening more carefully and questioning the people you agree with',
    'ADVICE: Just focus on your work today, avoiding all kinds of distractions and social media can make you feel happier',
    'ADVICE: Take a walk alone today, turn on the songs you listened to as a kid and imagine the games you played back then'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              color: Colors.black,
              width: 150,
              margin: const EdgeInsets.only(bottom: 20),
              child: Image.asset('assets/teller.jpg')),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
            child: ListTile(
              leading: Icon(Icons.favorite, color: Colors.redAccent),
              title: const Text(
                'About LOVE',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
              onTap: () {
                setState(() {
                  answerIndex = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
            child: ListTile(
              leading: const Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              title: const Text(
                'About MONEY',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              onTap: () {
                setState(() {
                  answerIndex = Random().nextInt(5) + 6;
                });
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
            child: ListTile(
              leading: const Icon(
                Icons.explore,
                color: Colors.blue,
              ),
              title: const Text(
                'Daily ADVICE',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onTap: () {
                setState(() {
                  answerIndex = Random().nextInt(5) + 11;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Text(answers[answerIndex],
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }
}
