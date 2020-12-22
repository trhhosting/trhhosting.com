import 'package:angular/angular.dart';
import 'dart:html' as html;

import '../../shared/Cookies/cookies.dart';
import '../../shared/Returns/returns.dart';
import '../../shared/Terms/terms.dart';
import '../../shared/Disclaimer/disclaimer.dart';

@Component(
  selector: 'licenses',
  templateUrl: 'licenses.html',
  styleUrls: [
    'licenses.css',
  ],
  directives: [
    coreDirectives,
    Cookies,
    Returns,
    Terms,
    Disclaimer,
  ],


)
class Licenses implements OnInit {
  @ViewChild('cookie')
  html.DivElement cookie;
  @ViewChild('disclaimer')
  html.DivElement disclaimer;
  @ViewChild('returns')
  html.DivElement returns;
  @ViewChild('terms')
  html.DivElement terms;

  @override 
  void ngOnInit(){
    clear();
    disclaimer.hidden = false;
  }

  void activate(String type){
    clear();
    switch (type){
      case "cookies":
      cookie.hidden = false;
      break;
      case "disclaimer":
      disclaimer.hidden = false;
      break;
      case "returns":
      returns.hidden = false;
      break;
      case "terms":
      terms.hidden = false;
      break;
    }
  }

  void clear(){
    cookie.hidden = true;
    disclaimer.hidden = true;
    returns.hidden = true;
    terms.hidden = true;
  }
}
