// ignore_for_file: cascade_invocations

import 'package:get_it/get_it.dart';
import 'package:to_bem/services/movies_repository.dart';
import 'package:to_bem/store/home_page_store.dart';
import 'package:to_bem/store/movies_store.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerFactory<HomePageStore>(
    HomePageStore.new,
  );
  getIt.registerFactory<MoviesRepository>(MoviesRepository.new);
  getIt.registerFactory<MoviesStore>(
    () => MoviesStore(getIt.get<MoviesRepository>()),
  );
}
