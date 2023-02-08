class question_c_d_e {
  Future<int> _futureMethod() {
    var delay = 5;
    return Future.delayed(Duration(seconds: delay), () {
      print('Delayed print c_d_e');
      return delay;
    });
  }

  //Future with async keyword which delays return of value until the value to be returned is avaliable
  Future<String> _futureAsync() async {
    late String val;
    try {
      //await puts it into queue for execution and then collects return value which can be used for further opertions after completion of the async method
      await _futureMethod().then((value) {
        val = 'the value is $value';
      });
    } catch (error) {
      val = 'error';
    }
    return val;
  }

  void cde_executor() {
    print('c_d_e question execute');
    _futureAsync();
  }
}
