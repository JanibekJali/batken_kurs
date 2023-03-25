import 'package:flutter/material.dart';
import 'package:quiz_app_batken/data/local_data/quiz_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> onunchuKlass = ['Temurlan', 'Erzhan', 'Aikokul'];

  List<int> alganBaalary = [4, 5, 4];
  List<int> okuuchular = [
    2,
  ];
  List<Icon> icons = [];

  @override
  Widget build(BuildContext context) {
    onunchuKlass.add('Gulaiym');
    onunchuKlass.add('Belek');
    onunchuKlass.remove('Temurlan');

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
            Text(
              QuizData().surrolorJooptor[1].suroo!,
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
              onTap: () {
                icons.add(
                  Icon(
                    Icons.check,
                    size: 50,
                    color: Colors.green,
                  ),
                );
                setState(() {});
              },
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
            Container(
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
            Row(children: icons)
          ],
        ),
      ),
    );
  }
}
