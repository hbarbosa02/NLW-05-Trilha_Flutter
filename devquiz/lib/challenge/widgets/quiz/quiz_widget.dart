import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AwnserWidget(
              isRight: false,
              title: "Kit de desenvolvimento de interface de usuário"),
          AwnserWidget(
              isRight: true,
              isSelected: true,
              title:
                  "Possibilita a criação de aplicativos compilados nativamente"),
          AwnserWidget(
              isRight: false,
              title: "Acho que é uma marca de café do Himalaia"),
          AwnserWidget(
              isRight: false,
              title:
                  "Possibilita a criação de desktops que são muito incríveis"),
        ],
      ),
    );
  }
}
