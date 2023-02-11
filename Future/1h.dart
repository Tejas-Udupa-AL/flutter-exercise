import 'dart:async';

class question_h {
  Completer _completer = Completer();
  void _foo(Function(int a) callback) async {
    callback(await Future.sync(() => 12));
  }

  //Same as above without callbacks but does async ops
  Future<int> _doo() async {
    return await _completer.future;
  }

  //wraps above method
  Future<int> _goo() async {
    return _doo();
  }

  void _completeValue() {
    _completer.complete(3);
  }

  //Called after async completion
  void _someRandCall(int ret) {
    print('callback: $ret');
  }

  void h_executor() {
    //Callback based
    _foo(
      (a) => _someRandCall(a),
    );
    //Future based
    _goo().then((a) => _someRandCall(a));
    _completeValue();
    print('done');
  }
}
