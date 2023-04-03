import 'package:flutter/material.dart';
import 'package:quiz_app_batken/data/local_data/quiz_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Icon> icons = [];
  void jooptuTeksher(bool koldonuuchununJoobu) {
    final programmistJoop = quizData.jooptuAlipKel();
    if (koldonuuchununJoobu == programmistJoop) {
      icons.add(
        Icon(
          Icons.check,
          size: 35,
          color: Colors.green,
        ),
      );
    } else {
      icons.add(
        Icon(
          Icons.close,
          size: 35,
          color: Colors.red,
        ),
      );
    }

    quizData.otkoz();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text('Quiz App'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            quizData.suroonuAlipKel() == 'Suroolor buttu!'
                ? restart()
                : Text(
                    quizData.suroonuAlipKel()!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () => jooptuTeksher(true),
              child: Container(
                color: Color(0xff4CB050),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 130, vertical: 12),
                  child: Text(
                    'Tuura',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                jooptuTeksher(false);
              },
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 96, vertical: 12),
                  child: Text(
                    'Tuura emes',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Row(children: icons)
          ],
        ),
      ),
    );
  }

  InkWell restart() {
    return InkWell(
      onTap: () {
        quizData.restart();
        quizData.suroonuAlipKel();
        icons = [];
        setState(() {});
      },
      child: Container(
        height: 100,
        width: 300,
        color: Colors.red,
        child: Center(
          child: Text(
            'Suroolor buttu artka kait!',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
