import 'dart:convert';
import 'dart:io';
import 'package:api/api/api.dart';
import 'package:http/http.dart' as http; //assigns alias for easier calling
class APICall {
  Future<List<CatFacts>> catFactsCall() async { //Use Futures and class type
    //use await to force app to finish parsing the URL
    // print("TEST 1");
    CatFacts? json;
    var response = await http.get(Uri.parse("https://cat-fact.herokuapp.com/facts")); //Uri is a built-in class for URL stuff
    print(response.statusCode);
    //var catlist;
    if(response.statusCode == 200){
      //print("HELLO? :(");
      //print(jsonDecode(response.body));
      final Iterable catlist = (jsonDecode(response.body)); //assign list to variable
      //print(response.body);
      //print("goodbye :)");
      return catlist.map((cat) => CatFacts.fromJson(cat)).toList();
    } else{
      print("response.body");
    }
    throw("INTERNAL SCREECHING");
  }
}