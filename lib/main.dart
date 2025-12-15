import 'package:flutter/material.dart';
import 'package:recipes/Model/recipe.dart';
import 'package:recipes/recipe-detail.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple),),
      home: const MyHomePage(title: 'Uniqlo shop'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 194, 194),
      appBar: AppBar(title: Text(widget.title),centerTitle: true,backgroundColor: Colors.red, titleTextStyle: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
      body: SafeArea(child: Container(
              child:ListView.builder(
                itemBuilder: (BuildContext context, int index){
                  return GestureDetector(
                    onTap: (){
                      print('You tapped on no ${Recipe.samples[index].imgLabel}');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)
                        {
                          return RecipeDetail(recipe: Recipe.samples[index]);
                        },
                      ),
                    );
                    },
                    child: buildRecipeCard(Recipe.samples[index]),
                    );
                    },
                itemCount: Recipe.samples.length,
                )
      )),
    );
  }
}

Widget buildRecipeCard(Recipe recipe){
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(100.0),),
    margin: EdgeInsets.all(20.0),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Image(image: AssetImage(recipe.imgLabel)),
          SizedBox(height: 20.0),
          Text(recipe.imageUrl, style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
          //Text("i am hungry", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
          
        ],
      ),
    ),
  );
}
