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