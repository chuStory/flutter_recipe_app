import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;
  final String content;
  // 이미지 경로
  // 타이틀
  const RecipeListItem(this.imageName, this.title, this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/$imageName.jpeg", fit: BoxFit.cover),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            content,
            style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
