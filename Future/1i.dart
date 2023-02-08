class question_i {
  Future<void> _callBack() {
    return Future.delayed(Duration(seconds: 2), () {
      print('printing after delay of i');
    });
    print('printing before delay for i');
  }

  void i_executor() {
    _callBack();
  }
}
