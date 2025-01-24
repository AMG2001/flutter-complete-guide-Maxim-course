import 'package:get_it/get_it.dart';
import 'package:random_dice_roller/service/first_screen_service.dart';

final GetIt getIt = GetIt.instance;

void setUpDependencies() {
    // Register all singleton objects  .
    getIt.registerSingleton<FirstScreenService>(FirstScreenService());

}

