import 'package:flutter/material.dart';

class HomePageStore extends ValueNotifier<int> {
  HomePageStore() : super(0);

  // ignore: use_setters_to_change_properties
  void updateIndex(int index) => value = index;
}
