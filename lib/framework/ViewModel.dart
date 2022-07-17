import 'package:flutter/material.dart';

class ViewModel {
  Function refresh = () {};
}

extension ViewModelCreating on State {
  T createViewModel<T extends ViewModel>(T vm) {
    vm.refresh = () {
      // ignore: invalid_use_of_protected_member
      setState(() {});
    };
    return vm;
  }
}
