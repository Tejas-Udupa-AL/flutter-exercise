import 'dart:async';

//without iteratable, async, sync, yield
class foo {
  var _controller = StreamController<int>();
  var _streamTransformer = StreamTransformer<int, int>.fromHandlers(
    handleData: (num data, EventSink sink) {
      int i = 0;
      while (i < data) {
        sink.add(i++);
      }
    },
    handleDone: (EventSink sink) => sink.close(),
  );
  Stream<int> get streamNumber => _controller.stream.transform(_streamTransformer);
  foo(int a) {
    _controller.sink.add(a);
  }
}

class question_d {
  Iterable<int> _coo() sync* {
    int i;
    for (i = 0; i < 10; i++) {
      yield i;
    }
  }

  Future<void> _boo() async {
    for (final i in _coo()) {
      print(i);
    }
  }

  void d_executor() {
    _boo();
    var a = foo(3);
    var listner = a.streamNumber;
    listner.listen((event) {
      print(event);
    });
    print('done');
  }
}
