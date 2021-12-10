import 'package:flutter/foundation.dart';

class UIProvider with ChangeNotifier {
  int _currentPaymentScreen = 0;
  int get currentPaymentScreen => _currentPaymentScreen;

  void changePaymentScreen(int index) {
    _currentPaymentScreen = index;
    notifyListeners();
  }
}
