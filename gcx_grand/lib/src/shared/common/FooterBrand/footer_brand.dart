import 'package:angular/angular.dart';

@Component(
  selector: 'footer-brand',
  templateUrl: 'footer_brand.html',
)
class FooterBrand {
  String copyright = DateTime.now().year.toString();
}
