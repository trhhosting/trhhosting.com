
class WorkApplication {
    String userhash = "";
    String name = "";
    String gender = "";
    String address = "";
    int streetnumber = 0;
    String streetname = "";
    String postofficebox = "";
    String towncity = "";
    String stateprovince = "";
    String postalcode = "";
    String countrycode = "";
    String phonenumber = "";
    String cellphone = "";
    String dob = "";
    String occupation = "";
    String refname1 = "";
    String refnumber1 = "";
    String refemail1 = "";
    String refrelation1 = "";
    String refname2 = "";
    String refnumber2 = "";
    String refemail2 = "";
    String refrelation2 = "";
    String refname3 = "";
    String refnumber3 = "";
    String refemail3 = "";
    String refrelation3 = "";
    String company1 = "";
    String positiontitle1 = "";
    String description1 = "";
    String datesofemployment1 = "";
    String company2 = "";
    String positiontitle2 = "";
    String description2 = "";
    String datesofemployment2 = "";
    String company3 = "";
    String positiontitle3 = "";
    String description3 = "";
    String datesofemployment3 = "";
    String highschool = "";
    String college = "";
    String email = "";
    String website = "";
    String twitter = "";
    String facebook = "";
    String github = "";
    String telegram = "";
    String interest = "";
    // String resume = "";
 
 WorkApplication();



 Map submitJson(){
        return {
      "user_hash": userhash,
      "name": name.trimRight(),
      "gender": gender,
      "address":{
        "street_number": streetnumber,
        "street_name": streetname,
        "post_office_box": postofficebox,
        "town_city": towncity,
        "state_province": stateprovince,
        "postal_code": postalcode,
        "country_code": countrycode
      },
      "phone_number": phonenumber,
      "cell_phone": cellphone,
      "dob": dob,
      "occupation": occupation,
      "reference":[
        {
          "name": refname1,
          "number": refnumber1,
          "email": refemail1,
          "relation": refrelation1
        },
        {
          "name": refname2,
          "number": refnumber2,
          "email": refemail2,
          "relation": refrelation2
        },
        {
          "name": refname3,
          "number": refnumber3,
          "email": refnumber3,
          "relation": refrelation3
        }

      ],
      "work_history": [
        {
          "company": company1,
          "position_title": positiontitle1,
          "description": description1,
          "dates_of_employment": datesofemployment1
        },
        {
          "company": company2,
          "position_title": positiontitle2,
          "description": description2,
          "dates_of_employment": datesofemployment2
        },
        {
          "company": company3,
          "position_title": positiontitle3,
          "description": description3,
          "dates_of_employment": datesofemployment3
        }
      ],
      "high_school": highschool,
      "college": college,
      "networks": {
        "e_mail": email,
        "website": website,
        "twitter": twitter,
        "facebook": facebook,
        "github": github,
        "telegram": telegram
      }
    ,
      "interest": interest,
      "resume": ""
    };
  }
}