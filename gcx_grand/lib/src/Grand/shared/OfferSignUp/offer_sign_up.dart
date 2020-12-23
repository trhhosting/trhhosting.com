import 'package:angular/angular.dart';
import 'package:logic/logic.dart';
import '../../../../logic/email.dart';
import '../../../../logic/trh.dart';
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
  @ViewChild('typeofsite')
  SelectElement typeofsite;
  @ViewChild('notes')
  TextAreaElement notes;


  @override
  void ngOnInit() async{
    if (await getData("name") != null){
        name.value = await getData("name");
        phonenumber.value = await getData("phone");
        email.value = await getData("email");
        notes.value = await getData("notes");
    }

  }
  WordPressSignUp x = WordPressSignUp();
  void send() async{
    // js.context.callMethod("run_locker");
    if (!validateEmailForm()){
      return;
    }
    x.email = nullValue(email.value);
    x.name = nullValue(name.value);
    x.phone = nullValue(phonenumber.value);
    x.typeofsite = nullValue(typeofsite.value);
    x.notes = nullValue(notes.value);
    await setData("name", name.value);
    await setData("phone", phonenumber.value);
    await setData("email", email.value);
    await setData("notes", notes.value);
    String data = json.encode(x.toJson());
    websiteRequest("trh free wordpress", data);
    window.location.href = "/#/received-application";
    window.scrollTo(0,0);
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

}

  String nullValue(var data){
    if (data == null || data == 0 || data.toString().isEmpty){
      return 'none';
    }
    var x = data.toString();
    return x;
  }
