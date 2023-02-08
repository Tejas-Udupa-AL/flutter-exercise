class _privClass {
  late int _privMem;
  _privClass(int a) {
    _privMem = a;
  }

  void publicMem() {
    print('Public Method');
  }

  void _privMethod() {
    print('private method');
  }

  int getPriv() {
    _privMethod();
    return this._privMem;
  }
}

class question_b {
  void showOut() {
    int b = _privClass(23).getPriv();
    //_privClass(10)._privMethod();
    print(b);
  }
}
