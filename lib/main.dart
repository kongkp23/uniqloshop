import 'package:flutter/material.dart';
import 'package:uniqloshop/model/outfit.dart';
import 'package:uniqloshop/outfit_detail.dart';

void main() {
  runApp(const UniqloShopApp());
}

class UniqloShopApp extends StatelessWidget {
  const UniqloShopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
        ),
      ),
      home: const MyHomePage(title: 'Uniqlo Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 35, 35),
        title: Text(widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arial',
            )),
      ),
      body: SafeArea(
          child: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                print('You tapped on ${Outfit.samples[index].OutfitLabel}');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return OutfitDetail(outfit: Outfit.samples[index]);
                  }),
                );
              },
              child: buildOutfitCard(Outfit.samples[index]),
            );
          },
          itemCount: Outfit.samples.length,
        ),
      )),
    );
  }
  Widget buildOutfitCard(Outfit outfit) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              outfit.OutfitLabel,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Palatino',
              ),
            ),
            const SizedBox(height: 14.0),
            Image(image: AssetImage(outfit.OutfitUrl)),
          ],
        ),
      ),
    );
  }
  
}
