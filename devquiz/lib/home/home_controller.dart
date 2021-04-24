import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Hiran",
      photoUrl: "https://avatars.githubusercontent.com/u/8129124?v=4",
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        questions: [
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
        image: AppImages.blocks,
        level: Level.facil,
      ),
    ];
  }
}
