import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Hiran",
      photoUrl: "https://avatars.githubusercontent.com/u/8129124?v=4",
    );

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        questionAnswered: 1,
        image: AppImages.blocks,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter?",
            awsers: [
              AwnserModel(title: "Sim!"),
              AwnserModel(title: "Amando!"),
              AwnserModel(title: "Muito top!"),
              AwnserModel(title: "Show de bola!", isRight: true)
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter?",
            awsers: [
              AwnserModel(title: "Sim!"),
              AwnserModel(title: "Amando!"),
              AwnserModel(title: "Muito top!"),
              AwnserModel(title: "Show de bola!", isRight: true)
            ],
          )
        ],
      ),
    ];

    state = HomeState.success;
  }
}
