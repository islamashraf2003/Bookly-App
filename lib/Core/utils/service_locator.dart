import 'package:booky_app/Features/Home/data/Models/repos/home_repo.dart';
import 'package:booky_app/Features/Home/data/Models/repos/home_repo_implementation.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
//depencacy injection
void setUpServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(),
  );
}
