import 'package:angular/angular.dart';
import 'package:logic/logic.dart';
import '../../../../logic/email.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'dart:html';
// import 'dart:js' as js;
@Component(
  selector: 'offer-sign-up',
  templateUrl: 'offer_sign_up.html',
  styleUrls: [
    "offer_sign_up.css",
  ],
  directives: [
    coreDirectives,
  ]
)
class OfferSignUp implements OnInit {
  @ViewChild('name')
  InputElement name;
  @ViewChild('email')
  InputElement email;
  @ViewChild('phone')
  InputElement phonenumber;
  @ViewChild('timezone')
  SelectElement timezone;

  @override
  void ngOnInit(){
  }
  EmailSignUp x = EmailSignUp();
  void send() async{
    // js.context.callMethod("run_locker");
    if (!validateEmailForm()){
      return;
    }
    x.email = nullValue(email.value);
    x.name = nullValue(name.value);
    x.phone = nullValue(phonenumber.value);
    x.timezone = nullValue(timezone.value);
    await setData("name", name.value);
    await setData("phone", phonenumber.value);
    await setData("email", email.value);
    String data = json.encode(x.toJson());
    sendJsonStart(data);
  }
  bool validateEmailForm(){
    if (!validateInputFieldFullName(name)){
      window.scrollTo(name.scrollTop,0);
      name.value = "";
      name.focus();
      return false;
    };
    if (!validateInputFieldEmail(email)){
      window.scrollTo(email.scrollTop,0);
      email.value = "";
      email.focus();
      return false;
    }
    if (!validateInputFieldPhone(phonenumber)){
      window.scrollTo(phonenumber.scrollTop,0);
      phonenumber.value = "";
      phonenumber.focus();
      return false;
    };
    return true;
  }
    void sendJsonStart(String data) async{
    String domain = "";
    domain = window.location.href;
    domain = domain.replaceAll(window.location.protocol, "");
    domain = domain.replaceAll("/", "");
    domain = domain.replaceAll("#", "_");
    var url = '/api/data/application/start/$domain';
    var headers = <String,String>{}; 
    headers = {'Content-Type':'application/json'};
    // await http.post(url,headers: headers, body: data);
    var response = await http.post(url,headers: headers, body: data);
    print(response.body);
    }


}

  String nullValue(var data){
    if (data == null || data == 0 || data.toString().isEmpty){
      return 'none';
    }
    var x = data.toString();
    return x;
  }
