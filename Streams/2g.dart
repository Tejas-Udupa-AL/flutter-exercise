import 'dart:async';

import 'periodic.dart';

class question_g {
  late StreamSubscription _sub;
  var streamController = StreamController.broadcast();

  question_g() {
    _sub = periodic().myStream.listen((event) {
      print('Listner 3: $event');
    });

    streamController.stream.listen((event) {
      print("BStream listener 1: $event");
    });
    streamController.stream.listen((event) {
      print("BStream listener 2: $event");
    });
  }
  void _exec() {
    streamController.add('Hello');
    streamController.add('world');
    streamController.close();
  }

  void g_executor() {
    _exec();
    _sub.resume();
  }
}
