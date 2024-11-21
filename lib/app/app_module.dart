import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_view_app_001/app/features/home/home_page.dart';

class AppModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
  
}