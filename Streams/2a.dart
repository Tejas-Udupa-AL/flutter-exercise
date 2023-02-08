class question_a {
  Stream<int> countStream(int max) async* {
    for (int i = 1; i <= max; i++) {
      yield i;
    }
  }

  Future<void> _streamMethods() async {
    await countStream(10).first.then((value) => print(value));
    await countStream(10).last.then((value) => print(value));
    await countStream(10).isEmpty.then((value) => print(value));
    await countStream(10).any((element) {
      if (element < 6) {
        print('smaller than 3');
        return false;
      } else
        return true;
    });

    print(await countStream(10).contains(1));
    print(await countStream(10).elementAt(2));
    final res = await countStream(10).join('-');
    print(res);
    //prints last matching element
    print(await countStream(10).lastWhere((element) => element % 6 == 0, orElse: () => -1));
    //Discards all data on this stream, but signals when it is done or an error occurred.
    print(await countStream(10).drain(2));
  }

  void a_executor() {
    _streamMethods();
  }
}
