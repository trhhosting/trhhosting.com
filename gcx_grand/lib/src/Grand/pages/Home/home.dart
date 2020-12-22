import 'dart:html';
import 'package:angular/angular.dart';
import '../../shared/Offer/offer.dart';
import '../../shared/OfferSignUp/offer_sign_up.dart';
import '../../shared/JobApplication/job_application.dart';
import 'package:logic/logic.dart';

@Component(
  selector: 'home',
  templateUrl: 'home.html',
  styleUrls: [
    "home.css",
    "intro.css",
    "responsive.css",
  ],
  directives: [
    coreDirectives,
    Offer,
    OfferSignUp,
    JobApplication,
  ],
)
class Home implements OnInit {
  @ViewChild('offdiv')
  Element offdiv;
  @ViewChild('emailstart')
  Element emailstart;
  @ViewChild('application')
  Element application;
  int screenWidth, screenHeight;
  String hash = "";
  String em;
  @override
  void ngOnInit() async {
    top();
    hash = await getData("hash");
    // print(hash);
    em = await getData("email");
    if(em == null){
      application.hidden = true;
      print("hello World");
    } else {
      application.hidden = false;
      emailstart.hidden = true;
    }
    }
  void top(){
    window.scrollTo(0,0);
  }
  
}
