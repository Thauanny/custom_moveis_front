import 'package:customoveis/modules/customization/customization_module.dart';
import 'package:customoveis/modules/home/home_module.dart';
import 'package:customoveis/modules/item/item_module.dart';
import 'package:customoveis/modules/item/presentation/pages/item_page.dart';
import 'package:customoveis/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: LoginModule(),
        ),
        ModuleRoute(
          '/itemPage',
          module: ItemModule(),
        ),
        ModuleRoute(
          '/home',
          module: HomeModule(),
        ),
        ModuleRoute(
          '/customization',
          module: CustomizationModule(),
        ),
      ];
}
