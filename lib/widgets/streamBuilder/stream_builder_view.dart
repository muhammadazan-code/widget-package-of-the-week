import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({super.key});

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {
  TextEditingController emailController = TextEditingController();

  List<String> message = [];

  Steam streamSocket = Steam();
  late StreamSubscription<DateTime> streamSubscription;
  DateTime currentTime = DateTime.now();

  Stream<DateTime> fetchDate() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield DateTime.now();
    }
  }

  @override
  void initState() {
    super.initState();
    message.add("Azan");
    streamSocket.addResponse(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text("S T R E A M"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StreamBuilder(
              stream: streamSocket.getResponse,
              initialData: ["No data"],
              builder: (context, AsyncSnapshot<List<String>> snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Text(snapshot.data![index].toString());
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.blueAccent,
                    ),
                  );
                } else {
                  return Center(
                    child: Text("Something went wrong."),
                  );
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Message",
                        border: OutlineInputBorder(),
                        focusColor: Colors.green),
                  ),
                ),
                IconButton(
                    color: Colors.green,
                    onPressed: () {
                      setState(() {});
                      message.add(emailController.text.toString());
                      streamSocket.addResponse(message);
                      emailController.clear();
                    },
                    icon: Icon(Icons.send)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Steam {
  final _sockerResponse = StreamController<List<String>>.broadcast();

  void Function(List<String>) get addResponse => _sockerResponse.sink.add;

  Stream<List<String>> get getResponse =>
      _sockerResponse.stream.asBroadcastStream();
}
