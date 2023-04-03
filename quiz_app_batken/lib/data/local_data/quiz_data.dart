import 'package:quiz_app_batken/models/quiz_model/quiz_model.dart';

class QuizData {
  int index = 0;
  List<QuizModel> surrolorJooptor = [
    QuizModel(suroo: 'Kyrgyzstan egemenduu emes', joop: false),
    QuizModel(suroo: ' Kyrgyzstanda 7 oblast bar', joop: true),
    QuizModel(suroo: 'Batkende Aigul gulu bar', joop: true),
  ];
  String? suroonuAlipKel() {
    if (index < surrolorJooptor.length) {
      return surrolorJooptor[index].suroo;
    } else {
      return 'Suroolor buttu!';
    }
  }

  bool? jooptuAlipKel() {
    if (index < surrolorJooptor.length) {
      return surrolorJooptor[index].joop;
    } else {
      return null;
    }
  }

  void otkoz() {
    index++;
  }

  void restart() {
    index = 0;
  }
}

final QuizData quizData = QuizData();
