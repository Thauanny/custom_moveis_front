import 'package:customoveis/modules/item/presentation/pages/item_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ItemModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ItemPage(),
        ),
      ];
}
