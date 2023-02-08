import 'dart:async';

import 'periodic.dart';

class question_c {
  late StreamSubscription _sub;
  question_c() {
    _sub = periodic().myStream.listen((event) {
      print('listner 1: $event');
    });
    print('Subbed to stream');
  }
  Future<void> _delayedUnsub() async {
    await Future.delayed(Duration(seconds: 2));
    print('Unsubbed from stream');
    _sub.cancel();
  }

  void c_executor() {
    _delayedUnsub();
  }
}
