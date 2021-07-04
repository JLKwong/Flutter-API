import 'package:api/api/api.dart';
import 'package:api/api/call.dart';
import 'package:flutter/material.dart';
// import 'api/api.dart'; //relative
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  APICall uiCall = APICall(); // Assign class to variable to access values inside class
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: FutureBuilder<List<CatFacts>>(
            future: uiCall.catFactsCall(),
            builder: (context, snapshot) {
              return Text("${snapshot.data?[0].text}");
              //ListView.builder(
              //  itemCount: catlist.length,
              //  itemBuilder: (context, index) {
              //    return ListTile(
              //      title: Text('${catlist[index]}'),
              //    );
                },
              )
            },
          ),
        ) // build new instance of class
    );
  }
}