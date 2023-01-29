import 'package:customoveis/modules/customization/presentation/pages/customization_color/customization_color_page.dart';
import 'package:customoveis/modules/customization/presentation/pages/custumization_atributes/customization_atributes_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomizationModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/customization_color',
          child: (context, args) => const CustomizationColorPage(),
        ),
        ChildRoute(
          '/customization_atr',
          child: (context, args) => const CustomizationAtributesPage(),
        ),
      ];
}
