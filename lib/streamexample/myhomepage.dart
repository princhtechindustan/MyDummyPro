import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newdummybitesbee/streamexample/streamex.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  StreamController streamController = StreamController();

  void add() async {
    for (int i = 0; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 2));
      streamController.sink.add(i);
    }
  }

  Stream<int> addNumber() async* {
    for (int i = 0; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 2));
      yield i;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    add();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: StreamBuilder(
                  //stream: streamController.stream,
                  stream: addNumber(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Text("No data Found");
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    }
                    return Text("${snapshot.data}");
                  }),
            )
          ],
        ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>const StreamExample()));
        },
      ),
      ),
    );
  }
}


