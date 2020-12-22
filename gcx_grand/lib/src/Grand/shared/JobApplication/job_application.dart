import 'package:angular/angular.dart';
import 'dart:html';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'application.dart';
// import '../../../../logic/db.dart' as db;
// import '../../../../logic/validation.dart';
import 'package:logic/logic.dart';

@Component(
  selector: 'job-application',
  templateUrl: 'job_application.html',
  styleUrls: [
    'job_application.css',
  ],
  directives: [
    coreDirectives,
  ],
)
class JobApplication  implements OnInit  {
  //UI Elements For the work application
  @ViewChild('appstart')
  DivElement appstart;
  @ViewChild('address')
  DivElement address;
  @ViewChild('networks')
  DivElement networks;
  @ViewChild('workhistory')
  DivElement workhistory;
  @ViewChild('reference')
  DivElement reference;
  @ViewChild('submitsend')
  DivElement submitsend;
  @ViewChild('submitnav')
  DivElement submitnav;
  @ViewChild('title')
  HeadingElement title;
  //Data fields
  @ViewChild('name')
  InputElement name;
  @ViewChild('gender')
  InputElement gender;
  @ViewChild('phonenumber')
  InputElement phonenumber;
  @ViewChild('cellphone')
  InputElement cellphone;
  @ViewChild('dob')
  InputElement dob;
  @ViewChild('occupation')
  InputElement occupation;
  @ViewChild('highschool')
  InputElement highschool;
  @ViewChild('college')
  InputElement college;
  @ViewChild('interest')
  InputElement interest;
  @ViewChild('streetnumber')
  InputElement streetnumber;
  @ViewChild('streetname')
  InputElement streetname;
  @ViewChild('postofficebox')
  InputElement postofficebox;
  @ViewChild('towncity')
  InputElement towncity;
  @ViewChild('stateprovince')
  InputElement stateprovince;
  @ViewChild('postalcode')
  InputElement postalcode;
  @ViewChild('countrycode')
  InputElement countrycode;
  @ViewChild('email')
  InputElement email;
  @ViewChild('website')
  InputElement website;
  @ViewChild('twitter')
  InputElement twitter;
  @ViewChild('facebook')
  InputElement facebook;
  @ViewChild('github')
  InputElement github;
  @ViewChild('telegram')
  InputElement telegram;

  // References
  @ViewChild('refname1')
  InputElement refname1;
  @ViewChild('refnumber1')
  InputElement refnumber1;
  @ViewChild('refemail1')
  InputElement refemail1;
  @ViewChild('refrelation1')
  InputElement refrelation1;

  @ViewChild('refname2')
  InputElement refname2;
  @ViewChild('refnumber2')
  InputElement refnumber2;
  @ViewChild('refemail2')
  InputElement refemail2;
  @ViewChild('refrelation2')
  InputElement refrelation2;

  @ViewChild('refname1')
  InputElement refname3;
  @ViewChild('refnumber3')
  InputElement refnumber3;
  @ViewChild('refemail3')
  InputElement refemail3;
  @ViewChild('refrelation3')
  InputElement refrelation3;

  //Work History
  @ViewChild('company1')
  InputElement company1;
  @ViewChild('positiontitle1')
  InputElement positiontitle1;
  @ViewChild('description1')
  InputElement description1;
  @ViewChild('datesofemployment1')
  InputElement datesofemployment1;

  @ViewChild('company2')
  InputElement company2;
  @ViewChild('positiontitle2')
  InputElement positiontitle2;
  @ViewChild('description2')
  InputElement description2;
  @ViewChild('datesofemployment2')
  InputElement datesofemployment2;

  @ViewChild('company3')
  InputElement company3;
  @ViewChild('positiontitle3')
  InputElement positiontitle3;
  @ViewChild('description3')
  InputElement description3;
  @ViewChild('datesofemployment3')
  InputElement datesofemployment3;

  String userhash;
  int appSection = 0;
  bool datasent = false;
  bool emailCompleted = false;
  @override
  void ngOnInit() async{
    userhash = await getData('hash');
    name.value = await getData('name');
    phonenumber.value = await getData('phone');
    email.value = await getData('email');
    }
  void nextPart(){
    // print(appSection);

    switch (appSection) {
      case 0:
        if (!validateAppStart()){
          return;
        }        
        break;
      case 1:
        if (!validateAddress()){
          return;
        }
        break;
      case 2:
        if (!validateNetworks()){
          return;
        }
        break;
      case 3:
        if (!validateWorkhistory()){
          return;
        }
        break;
      case 4:
        if (!validateReference()){
          return;
        }
        break;
      
      default:
    }


    if(appSection < 5 ) {
      appSection++;
    }

    appWindowChanger(appSection);
  }
  void prePart(){
    // print(appSection);
    if(appSection < 5 && appSection != 0 ) {
      appSection--;
    }
    
    appWindowChanger(appSection);
  }

  void appWindowChanger(int app){
    switch (appSection) {
      case 0 :
      appstart.hidden = false;
      address.hidden = true;
      networks.hidden = true;
      workhistory.hidden = true;
      reference.hidden = true;
        break;
      case 1 :
      appstart.hidden = true;
      address.hidden = false;
      networks.hidden = true;
      workhistory.hidden = true;
      reference.hidden = true;
        break;
      case 2 :
      appstart.hidden = true;
      address.hidden = true;
      networks.hidden = false;
      workhistory.hidden = true;
      reference.hidden = true;
        break;
      case 3 :
      appstart.hidden = true;
      address.hidden = true;
      networks.hidden = true;
      workhistory.hidden = false;
      reference.hidden = true;
        break;
      case 4 :
      appstart.hidden = true;
      address.hidden = true;
      networks.hidden = true;
      workhistory.hidden = true;
      reference.hidden = false;
        break;
      case 5 :
      appstart.hidden = true;
      address.hidden = true;
      networks.hidden = true;
      workhistory.hidden = true;
      reference.hidden = true;
      submitsend.hidden = false;
      submitnav.hidden = true;
        break;
    }
      window.scrollTo(title.scrollTop,0);

  }
  WorkApplication x = WorkApplication();
  void send(){
    // print(name.value);
    // js.context.callMethod("run_locker");
    x.userhash = nullValue(userhash);
    x.name = nullValue(name.value);
    x.gender = nullValue(gender.value);
    x.streetnumber = 0;
    x.streetname = nullValue(streetname.value);
    x.postofficebox = nullValue(postofficebox.value);
    x.towncity = nullValue(towncity.value);
    x.stateprovince = nullValue(stateprovince.value);
    x.postalcode = nullValue(postalcode.value);
    x.countrycode = "USA";
    x.phonenumber = nullValue(phonenumber.value);
    x.cellphone = nullValue(cellphone.value);
    x.dob = nullValue(dob.value);
    x.occupation = nullValue(occupation.value);
    x.refname1 = nullValue(refname1.value);
    x.refnumber1 = nullValue(refnumber1.value);
    x.refemail1 = nullValue(refemail1.value);
    x.refrelation1 = nullValue(refrelation1.value);
    x.refname2 = nullValue(refname2.value);
    x.refnumber2 = nullValue(refnumber2.value);
    x.refemail2 = nullValue(refemail2.value);
    x.refrelation2 = nullValue(refrelation2.value);
    x.refname3 = nullValue(refname3.value);
    x.refemail3 = nullValue(refemail3.value);
    x.refnumber3 = nullValue(refnumber3.value);
    x.refrelation3 = nullValue(refrelation3.value);
    x.company1 = nullValue(company1.value);
    x.positiontitle1 = nullValue(positiontitle1.value);
    x.description1 = nullValue(description1.value);
    x.datesofemployment1 = nullValue(datesofemployment1.value);
    x.company2 = nullValue(company2.value);
    x.positiontitle2 = nullValue(positiontitle2.value);
    x.description2 = nullValue(description2.value);
    x.datesofemployment2 = nullValue(datesofemployment2.value);
    x.company3 = nullValue(company3.value);
    x.positiontitle3 = nullValue(positiontitle3.value);
    x.description3 = nullValue(description3.value);
    x.datesofemployment3 = nullValue(datesofemployment3.value);
    x.highschool = nullValue(highschool.value);
    x.college = nullValue(college.value);
    x.email = nullValue(email.value);
    x.website = nullValue(website.value);
    x.twitter = nullValue(twitter.value);
    x.facebook = nullValue(facebook.value);
    x.github = nullValue(github.value);
    x.telegram = nullValue(telegram.value);
    x.interest = nullValue(interest.value);
    // x.resume = resume.value;
    if (!datasent){
      String data = jsonEncode(x.submitJson());
      sendJson(data);
      print(data);
      datasent = true;
    }
  }

  bool validateAppStart(){
    if (!validateInputFieldFullName(name)){
      window.scrollTo(name.scrollTop,0);
      name.focus();
      return false;
    };
    if (!validateInputFieldText(dob)){
      window.scrollTo(dob.scrollTop,0);
      dob.focus();
      return false;
    }
    if (!validateInputFieldText(gender)){
      window.scrollTo(gender.scrollTop,0);
      gender.focus();
      return false;
    }
    if (!validateInputFieldText(occupation)){
      window.scrollTo(occupation.scrollTop,0);
      occupation.focus();
      return false;
    }
    if (!validateInputFieldText(interest)){
      window.scrollTo(interest.scrollTop,0);
      interest.focus();
      return false;
    }
    return true;
  }
  
  bool validateAddress(){
    if (!validateInputFieldNumber(streetnumber)){
      streetnumber.focus(); 
      window.scrollTo(streetnumber.scrollTop,0);
      return false;
    }
    if (!validateInputFieldText(streetname)){
      window.scrollTo(streetname.scrollTop,0);
      streetname.focus();
      return false;
    }
    if (!validateInputFieldPhone(phonenumber)){
      window.scrollTo(phonenumber.scrollTop,0);
      phonenumber.value = "";
      phonenumber.focus();
      return false;
    }
    if (!validateInputFieldText(towncity)){
      window.scrollTo(towncity.scrollTop,0);
      towncity.value = "";
      towncity.focus();
      return false;
    }
    if (!validateInputFieldState(stateprovince)){
      window.scrollTo(stateprovince.scrollTop,0);
      stateprovince.value = "";
      stateprovince.focus();
      return false;
    }
    if (!validateInputFieldZipCode(postalcode)){
      window.scrollTo(postalcode.scrollTop,0);
      postalcode.value = "";
      postalcode.focus();
      return false;
    }
    return true;
  }

  bool validateNetworks(){
    if (!validateInputFieldEmail(email)){
      window.scrollTo(email.scrollTop,0);
      email.value = "";
      email.focus();
      return false;
    }    
    return true;
  }
  bool validateReference(){
    if(refemail1.value.isNotEmpty){
      if (!validateInputFieldEmail(refemail1)){
        window.scrollTo(refemail1.scrollTop,0);
        refemail1.value = "";
        refemail1.focus();
        return false;
      }
    }
    if(refnumber1.value.isNotEmpty){
      if (!validateInputFieldPhone(refnumber1)){
        window.scrollTo(refnumber1.scrollTop,0);
        refnumber1.value = "";
        refnumber1.focus();
        return false;
      }
    }
    
    return true;
  }
  bool validateWorkhistory(){
    return true;
  }


  String nullValue(var data){
    if (data == null || data == 0 || data.toString().isEmpty){
      return 'none';
    }
    var x = data.toString();
    return x;
  }
/*
	name string `form:"name"json:"name"`
	gender string `form:"gender"json:"gender"`
	phonenumber string `form:"phone_number"json:"phone_number"`
	cellphone string `form:"cell_phone"json:"cell_phone"`
	dob string `form:"dob"json:"dob"`
	occupation string `form:"occupation"json:"occupation"`
	highschool string `form:"high_school"json:"high_school"`
	college string `json:"college"form:"college"`
	interest string `json:"interest"form:"interest"`
	Resume string `json:"resume"form:"resume"`

  Address struct{
		streetnumber int `form:"street_number"json:"street_number"`
		streetname string `form:"street_name"json:"street_name"`
		postofficebox string `form:"post_office_box"json:"post_office_box"`
		towncity string `form:"town_city"json:"town_city"`
		stateprovince string `form:"state_province"json:"state_province"`
		postalcode string `form:"postal_code"json:"postal_code"`
		countrycode string `form:"country_code"json:"country_code"`
	} `form:"address"json:"address"`

	Networks struct{
		email string `json:"e_mail"form:"e_mail"`
		website string `json:"website"form:"website"`
		twitter string `json:"twitter"form:"twitter"`
		facebook string `json:"facebook"form:"facebook"`
		github string `json:"github"form:"github"`
		telegram string `json:"telegram"form:"telegram"`
	} `json:"networks"form:"networks"`

	Reference []struct{
		name string `form:"name"json:"name"`
		number string `form:"number"json:"number"`
		email string `form:"email"json:"email"`
		relation string `form:"relation"json:"relation"`
	} `form:"reference"json:"reference"`
	WorkHistory []struct{
		Company string `form:"company"json:"company"`
		PositionTitle string `form:"position_title"json:"position_title"`
		Description string `form:"description"json:"description"`
		DatesOfEmployment string `form:"dates_of_employment"json:"dates_of_employment"`
	} `form:"work_history"json:"work_history"`

*/

  void sendJson(String data) async{
    String domain = "";
    domain = window.location.href;
    domain = domain.replaceAll(window.location.protocol, "");
    domain = domain.replaceAll("/", "");
    domain = domain.replaceAll("#", "_");
    await setData("name", name.value.trimRight());
    var url = '/api/data/application/position/$domain';
    var headers = <String,String>{}; 
    headers = {'Content-Type':'application/json'};
    await http.post(url,headers: headers, body: data);
    // var response = await http.post(url,headers: headers, body: data);
    // print(response.body);
    }


}