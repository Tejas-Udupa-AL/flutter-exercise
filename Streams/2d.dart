import 'periodic.dart';

class question_d {
  Stream<int> countStream(int max) async* {
    for (int i = 1; i <= max; i++) {
      yield i;
    }
  }

  final stream = periodic().myStream.listen((event) {
    print(' listner 2: $event');
  });

  void _exec() {
    stream.cancel();
  }

  void d_executor() {
    _exec();
  }
}
