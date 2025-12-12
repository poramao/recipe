import 'package:flutter/material.dart';
import 'package:recipes/Model/recipe.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetail ({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Detail'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(recipe.imgLabel),
            const SizedBox(height: 20),
            Text(
              recipe.imageUrl,
              style: GoogleFonts.poppins(
                fontSize: 24
              ),
            ),
            SizedBox(height: 20.0),
            Text(recipe.imagedetail)
          ],),
      ),
    );
  }
}