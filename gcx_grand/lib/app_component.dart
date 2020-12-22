import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/routes.dart';
import 'src/shared/AppShell/app_shell.dart';

//Routing
@Component(
  selector: 'tlm-theme',
  templateUrl: 'app_component.html',
  styleUrls: [
    'app_component.css',
  ],
  directives: [
    routerDirectives,
    AppShell,
  ],
  exports: [
    RoutePaths,
    Routes,
  ],
)
class AppComponent {}
