import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert'; // to user jsonDecode


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

//# with http
  void getData() async {

    //# http
    var url_jsonplaceholder1 = Uri.parse('https://jsonplaceholder.typicode.com/todos/1'); 

    // Return a string representation (JSON), to be converted. Import dart:convert !!!
    Response response =  await get(url_jsonplaceholder1);
    
    //# jsonDecode on response.body (not just on respose alone): json to Map
    Map data = jsonDecode(response.body);
    print(data);

    //# so we can data['property']
    print(data['title']);
    
  }

  @override
  void initState() {
    super.initState(); 
    getData();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("loading")),
    );
  }
}