import 'package:DevQuiz/shared/models/awnser_model.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awsers;

  QuestionModel({
    required this.title,
    required this.awsers,
  }) : assert(
          awsers.length == 4,
        );
}
