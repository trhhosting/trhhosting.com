class EmailSignUp {
  String _name;
  String _email;
  String _timezone;
  String _phone;

  EmailSignUp({String name, String email, String timezone, String phone}) {
    this._name = name;
    this._email = email;
    this._timezone = timezone;
    this._phone = phone;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get email => _email;
  set email(String email) => _email = email;
  String get timezone => _timezone;
  set timezone(String timezone) => _timezone = timezone;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;

  EmailSignUp.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _email = json['email'];
    _timezone = json['timezone'];
    _phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = this._name;
    data['email'] = this._email;
    data['timezone'] = this._timezone;
    data['phone'] = this._phone;
    return data;
  }
}
class WordPressSignUp {
  String _name;
  String _email;
  String _typeofsite;
  String _phone;
  String _notes;

  WordPressSignUp({String name, String email, String typeofsite, String phone, String notes}) {
    this._name = name;
    this._email = email;
    this._typeofsite = typeofsite;
    this._phone = phone;
    this._notes = notes;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get email => _email;
  set email(String email) => _email = email;
  String get typeofsite => _typeofsite;
  set typeofsite(String typeofsite) => _typeofsite = typeofsite;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;
  //notes what client wants
  String get notes => this._notes;
  set notes(String notes){
  this._notes = notes;
  }

  WordPressSignUp.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _email = json['email'];
    _typeofsite = json['typeofsite'];
    _phone = json['phone'];
    _notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = this._name;
    data['email'] = this._email;
    data['typeofsite'] = this._typeofsite;
    data['phone'] = this._phone;
    data['notes'] = this._notes;
    return data;
  }
}