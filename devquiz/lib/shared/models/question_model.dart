import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'awsers': awsers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      awsers: List<AwnserModel>.from(
          map['awsers'].map((x) => AwnserModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) =>
      QuestionModel.fromMap(json.decode(source));
}
