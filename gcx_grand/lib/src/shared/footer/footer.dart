import 'package:angular/angular.dart';
import 'package:tlmThemeLogic/tlmThemeLogic.dart';
import 'package:tlmThemeLogic/company.dart';

@Component(
  selector: 'footer',
  templateUrl: 'footer.html',
)
class Footer {
  static DateTime t = new DateTime.now();
//  @Input()
  String _name;
//  @Input()
  String _copyrightYear;
//  @Input()
  Company _company;

  Footer(){
    this._copyrightYear = t.year.toString();
    this._name = 'TRH Hosting';
    this._company = LoadData();
  }
  //name Company name
  String get name => this._name;
  set name(String name){
  this._name = name;
  }

  Company get company => this._company;
  String get copyright => _copyrightYear;

}