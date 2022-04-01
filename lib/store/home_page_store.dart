import 'package:flutter/material.dart';

class HomePageStore extends ValueNotifier {
  HomePageStore() : super(0);

  var selectedIndex = ValueNotifier(0);

  void updateIndex(int value) => selectedIndex = value as ValueNotifier<int>;
}
