import 'dart:async';

import 'package:flutter/material.dart';

class StreamExample extends StatefulWidget {
  const StreamExample({Key? key}) : super(key: key);

  @override
  _StreamExampleState createState() => _StreamExampleState();
}

class _StreamExampleState extends State<StreamExample> {
  int counter = 0;
  StreamController streamController = StreamController();

  void add() {
    streamController.sink.add(counter);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    add();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: StreamBuilder(
              stream: streamController.stream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text("error data");
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                return Text("$counter");
              }),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {
            add();
            counter++;
          }),
    );
  }
}
