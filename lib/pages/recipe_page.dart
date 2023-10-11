import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_flutter/components/recipe_list_item.dart';
import 'package:recipe_flutter/components/recipe_menu.dart';
import 'package:recipe_flutter/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee", "커피 만드는 방법"),
            RecipeListItem("burger", "Made burger", "햄버거 만드는 방법"),
            RecipeListItem("pizza", "Made pizza", "피자 만드는 방법")
          ],
        ),
      ),
    );
  }
}

// 함수 만들어 보기
AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white, // appbar 배경색 지정
    elevation: 1.0,
    actions: [
      Icon(CupertinoIcons.search, color: Colors.black),
      SizedBox(width: 15),
      Icon(CupertinoIcons.heart, color: Colors.redAccent),
      SizedBox(width: 15)
    ],
  );
}
