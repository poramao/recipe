import 'package:flutter/material.dart';
import 'package:recipes/Model/recipe.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail ({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
  }

class _RecipeDetailState extends State<RecipeDetail> {
  int qty = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uniqlo shop'),centerTitle: true,backgroundColor: Colors.red, titleTextStyle: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(widget.recipe.imgLabel),
            const SizedBox(height: 20),
            Text(
              widget.recipe.imageUrl,
              style: GoogleFonts.poppins(
                fontSize: 24
              ),
            ),
            SizedBox(height: 20.0),
            TextButton(
                onPressed: () {
                  setState(() {
                    qty += 1;
                  });
                },
                  child: const Text('+'),
          ),
          Text(
               qty.toString() ,
              style: GoogleFonts.poppins(
                fontSize: 24
              ),
            ),
          TextButton(
                onPressed: () {
                  setState(() {
                    if (qty > 1){
                      qty -= 1;
                    }
                    else{
                      qty = 1;
                    }
                  });
                },
                  child: const Text('-'),
          ),
          Text(
              (widget.recipe.price * qty).toString() + " Baht",
              style: GoogleFonts.poppins(
                fontSize: 24
              ),
            ),
            
          ],),
      ),
    );
  }
}