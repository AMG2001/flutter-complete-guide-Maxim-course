import 'package:get_it/get_it.dart';
import 'package:quiz_app/service/quiz_page_service.dart';

GetIt getIt = GetIt.instance;

void setUpDependencies() {
  getIt.registerSingleton<QuizPageService>(QuizPageService());
}
