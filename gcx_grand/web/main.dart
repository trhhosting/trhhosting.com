import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:app/app_component.template.dart' as ng;

import 'main.template.dart' as self;
import 'package:gcxtrk/gcxtrk.dart';
const useHashLS = false;
@GenerateInjector(
	routerProvidersHash, // You can use routerProviders in production
	)
final InjectorFactory injector = self.injector$Injector;

void main() {
  StartSite("TRH Hosting - Free WordPress Site");
	runApp(ng.AppComponentNgFactory, createInjector: injector);
}
