class trkinfo {
  TimeInfo _timeInfo;
  SitesPaths _sitesPaths;
  Browser _browser;
  Screen _screen;
  Location _location;
  Hardware _hardware;

  trkinfo(
      {TimeInfo timeInfo,
      SitesPaths sitesPaths,
      Browser browser,
      Screen screen,
      Location location,
      Hardware hardware}) {
    this._timeInfo = timeInfo;
    this._sitesPaths = sitesPaths;
    this._browser = browser;
    this._screen = screen;
    this._location = location;
    this._hardware = hardware;
  }

  TimeInfo get timeInfo => _timeInfo;
  set timeInfo(TimeInfo timeInfo) => _timeInfo = timeInfo;
  SitesPaths get sitesPaths => _sitesPaths;
  set sitesPaths(SitesPaths sitesPaths) => _sitesPaths = sitesPaths;
  Browser get browser => _browser;
  set browser(Browser browser) => _browser = browser;
  Screen get screen => _screen;
  set screen(Screen screen) => _screen = screen;
  Location get location => _location;
  set location(Location location) => _location = location;
  Hardware get hardware => _hardware;
  set hardware(Hardware hardware) => _hardware = hardware;

  trkinfo.fromJson(Map<String, dynamic> json) {
    _timeInfo = json['time_info'] != null
        ? new TimeInfo.fromJson(json['time_info'])
        : null;
    _sitesPaths = json['sites_paths'] != null
        ? new SitesPaths.fromJson(json['sites_paths'])
        : null;
    _browser =
        json['browser'] != null ? new Browser.fromJson(json['browser']) : null;
    _screen =
        json['screen'] != null ? new Screen.fromJson(json['screen']) : null;
    _location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    _hardware = json['hardware'] != null
        ? new Hardware.fromJson(json['hardware'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this._timeInfo != null) {
      data['time_info'] = this._timeInfo.toJson();
    }
    if (this._sitesPaths != null) {
      data['sites_paths'] = this._sitesPaths.toJson();
    }
    if (this._browser != null) {
      data['browser'] = this._browser.toJson();
    }
    if (this._screen != null) {
      data['screen'] = this._screen.toJson();
    }
    if (this._location != null) {
      data['location'] = this._location.toJson();
    }
    if (this._hardware != null) {
      data['hardware'] = this._hardware.toJson();
    }
    return data;
  }
}

class TimeInfo {
  String _timeOpened;
  String _timezone;

  TimeInfo({String timeOpened, String timezone}) {
    this._timeOpened = timeOpened;
    this._timezone = timezone;
  }

  String get timeOpened => _timeOpened;
  set timeOpened(String timeOpened) => _timeOpened = timeOpened;
  String get timezone => _timezone;
  set timezone(String timezone) => _timezone = timezone;

  TimeInfo.fromJson(Map<String, dynamic> json) {
    _timeOpened = json['timeOpened'];
    _timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timeOpened'] = this._timeOpened;
    data['timezone'] = this._timezone;
    return data;
  }
}

class SitesPaths {
  String _pageon;
  String _referrer;
  String _previousSites;

  SitesPaths({String pageon, String referrer, String previousSites}) {
    this._pageon = pageon;
    this._referrer = referrer;
    this._previousSites = previousSites;
  }

  String get pageon => _pageon;
  set pageon(String pageon) => _pageon = pageon;
  String get referrer => _referrer;
  set referrer(String referrer) => _referrer = referrer;
  String get previousSites => _previousSites;
  set previousSites(String previousSites) => _previousSites = previousSites;

  SitesPaths.fromJson(Map<String, dynamic> json) {
    _pageon = json['pageon'];
    _referrer = json['referrer'];
    _previousSites = json['previousSites'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pageon'] = this._pageon;
    data['referrer'] = this._referrer;
    data['previousSites'] = this._previousSites;
    return data;
  }
}

class Browser {
  String _browserName;
  String _browserEngine;
  String _browserVersion1a;
  String _browserVersion1b;
  String _browserLanguage;
  String _browserOnline;
  String _browserPlatform;
  bool _dataCookiesEnabled;
  String _dataCookies1;
  String _dataCookies2;
  String _dataStorage;

  Browser(
      {String browserName,
      String browserEngine,
      String browserVersion1a,
      String browserVersion1b,
      String browserLanguage,
      String browserOnline,
      String browserPlatform,
      bool dataCookiesEnabled,
      String dataCookies1,
      String dataCookies2,
      String dataStorage}) {
    this._browserName = browserName;
    this._browserEngine = browserEngine;
    this._browserVersion1a = browserVersion1a;
    this._browserVersion1b = browserVersion1b;
    this._browserLanguage = browserLanguage;
    this._browserOnline = browserOnline;
    this._browserPlatform = browserPlatform;
    this._dataCookiesEnabled = dataCookiesEnabled;
    this._dataCookies1 = dataCookies1;
    this._dataCookies2 = dataCookies2;
    this._dataStorage = dataStorage;
  }

  String get browserName => _browserName;
  set browserName(String browserName) => _browserName = browserName;
  String get browserEngine => _browserEngine;
  set browserEngine(String browserEngine) => _browserEngine = browserEngine;
  String get browserVersion1a => _browserVersion1a;
  set browserVersion1a(String browserVersion1a) =>
      _browserVersion1a = browserVersion1a;
  String get browserVersion1b => _browserVersion1b;
  set browserVersion1b(String browserVersion1b) =>
      _browserVersion1b = browserVersion1b;
  String get browserLanguage => _browserLanguage;
  set browserLanguage(String browserLanguage) =>
      _browserLanguage = browserLanguage;
  String get browserOnline => _browserOnline;
  set browserOnline(String browserOnline) => _browserOnline = browserOnline;
  String get browserPlatform => _browserPlatform;
  set browserPlatform(String browserPlatform) =>
      _browserPlatform = browserPlatform;
  bool get dataCookiesEnabled => _dataCookiesEnabled;
  set dataCookiesEnabled(bool dataCookiesEnabled) =>
      _dataCookiesEnabled = dataCookiesEnabled;
  String get dataCookies1 => _dataCookies1;
  set dataCookies1(String dataCookies1) => _dataCookies1 = dataCookies1;
  String get dataCookies2 => _dataCookies2;
  set dataCookies2(String dataCookies2) => _dataCookies2 = dataCookies2;
  String get dataStorage => _dataStorage;
  set dataStorage(String dataStorage) => _dataStorage = dataStorage;

  Browser.fromJson(Map<String, dynamic> json) {
    _browserName = json['browserName'];
    _browserEngine = json['browserEngine'];
    _browserVersion1a = json['browserVersion1a'];
    _browserVersion1b = json['browserVersion1b'];
    _browserLanguage = json['browserLanguage'];
    _browserOnline = json['browserOnline'];
    _browserPlatform = json['browserPlatform'];
    _dataCookiesEnabled = json['dataCookiesEnabled'];
    _dataCookies1 = json['dataCookies1'];
    _dataCookies2 = json['dataCookies2'];
    _dataStorage = json['dataStorage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['browserName'] = this._browserName;
    data['browserEngine'] = this._browserEngine;
    data['browserVersion1a'] = this._browserVersion1a;
    data['browserVersion1b'] = this._browserVersion1b;
    data['browserLanguage'] = this._browserLanguage;
    data['browserOnline'] = this._browserOnline;
    data['browserPlatform'] = this._browserPlatform;
    data['dataCookiesEnabled'] = this._dataCookiesEnabled;
    data['dataCookies1'] = this._dataCookies1;
    data['dataCookies2'] = this._dataCookies2;
    data['dataStorage'] = this._dataStorage;
    return data;
  }
}

class Screen {
  int _sizeScreenW;
  int _sizeScreenH;
  int _sizeDocW;
  int _sizeDocH;
  int _sizeInW;
  int _sizeInH;
  int _sizeAvailW;
  int _sizeAvailH;
  int _scrColorDepth;
  int _scrPixelDepth;

  Screen(
      {int sizeScreenW,
      int sizeScreenH,
      int sizeDocW,
      int sizeDocH,
      int sizeInW,
      int sizeInH,
      int sizeAvailW,
      int sizeAvailH,
      int scrColorDepth,
      int scrPixelDepth}) {
    this._sizeScreenW = sizeScreenW;
    this._sizeScreenH = sizeScreenH;
    this._sizeDocW = sizeDocW;
    this._sizeDocH = sizeDocH;
    this._sizeInW = sizeInW;
    this._sizeInH = sizeInH;
    this._sizeAvailW = sizeAvailW;
    this._sizeAvailH = sizeAvailH;
    this._scrColorDepth = scrColorDepth;
    this._scrPixelDepth = scrPixelDepth;
  }

  int get sizeScreenW => _sizeScreenW;
  set sizeScreenW(int sizeScreenW) => _sizeScreenW = sizeScreenW;
  int get sizeScreenH => _sizeScreenH;
  set sizeScreenH(int sizeScreenH) => _sizeScreenH = sizeScreenH;
  int get sizeDocW => _sizeDocW;
  set sizeDocW(int sizeDocW) => _sizeDocW = sizeDocW;
  int get sizeDocH => _sizeDocH;
  set sizeDocH(int sizeDocH) => _sizeDocH = sizeDocH;
  int get sizeInW => _sizeInW;
  set sizeInW(int sizeInW) => _sizeInW = sizeInW;
  int get sizeInH => _sizeInH;
  set sizeInH(int sizeInH) => _sizeInH = sizeInH;
  int get sizeAvailW => _sizeAvailW;
  set sizeAvailW(int sizeAvailW) => _sizeAvailW = sizeAvailW;
  int get sizeAvailH => _sizeAvailH;
  set sizeAvailH(int sizeAvailH) => _sizeAvailH = sizeAvailH;
  int get scrColorDepth => _scrColorDepth;
  set scrColorDepth(int scrColorDepth) => _scrColorDepth = scrColorDepth;
  int get scrPixelDepth => _scrPixelDepth;
  set scrPixelDepth(int scrPixelDepth) => _scrPixelDepth = scrPixelDepth;

  Screen.fromJson(Map<String, dynamic> json) {
    _sizeScreenW = json['sizeScreenW'];
    _sizeScreenH = json['sizeScreenH'];
    _sizeDocW = json['sizeDocW'];
    _sizeDocH = json['sizeDocH'];
    _sizeInW = json['sizeInW'];
    _sizeInH = json['sizeInH'];
    _sizeAvailW = json['sizeAvailW'];
    _sizeAvailH = json['sizeAvailH'];
    _scrColorDepth = json['scrColorDepth'];
    _scrPixelDepth = json['scrPixelDepth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sizeScreenW'] = this._sizeScreenW;
    data['sizeScreenH'] = this._sizeScreenH;
    data['sizeDocW'] = this._sizeDocW;
    data['sizeDocH'] = this._sizeDocH;
    data['sizeInW'] = this._sizeInW;
    data['sizeInH'] = this._sizeInH;
    data['sizeAvailW'] = this._sizeAvailW;
    data['sizeAvailH'] = this._sizeAvailH;
    data['scrColorDepth'] = this._scrColorDepth;
    data['scrPixelDepth'] = this._scrPixelDepth;
    return data;
  }
}

class Location {
  String _latitude;
  String _longitude;
  String _accuracy;
  String _altitude;
  String _altitudeAccuracy;
  String _heading;
  String _speed;
  String _timestamp;

  Location(
      {String latitude,
      String longitude,
      String accuracy,
      String altitude,
      String altitudeAccuracy,
      String heading,
      String speed,
      String timestamp}) {
    this._latitude = latitude;
    this._longitude = longitude;
    this._accuracy = accuracy;
    this._altitude = altitude;
    this._altitudeAccuracy = altitudeAccuracy;
    this._heading = heading;
    this._speed = speed;
    this._timestamp = timestamp;
  }

  String get latitude => _latitude;
  set latitude(String latitude) => _latitude = latitude;
  String get longitude => _longitude;
  set longitude(String longitude) => _longitude = longitude;
  String get accuracy => _accuracy;
  set accuracy(String accuracy) => _accuracy = accuracy;
  String get altitude => _altitude;
  set altitude(String altitude) => _altitude = altitude;
  String get altitudeAccuracy => _altitudeAccuracy;
  set altitudeAccuracy(String altitudeAccuracy) =>
      _altitudeAccuracy = altitudeAccuracy;
  String get heading => _heading;
  set heading(String heading) => _heading = heading;
  String get speed => _speed;
  set speed(String speed) => _speed = speed;
  String get timestamp => _timestamp;
  set timestamp(String timestamp) => _timestamp = timestamp;

  Location.fromJson(Map<String, dynamic> json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _accuracy = json['accuracy'];
    _altitude = json['altitude'];
    _altitudeAccuracy = json['altitudeAccuracy'];
    _heading = json['heading'];
    _speed = json['speed'];
    _timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latitude'] = this._latitude;
    data['longitude'] = this._longitude;
    data['accuracy'] = this._accuracy;
    data['altitude'] = this._altitude;
    data['altitudeAccuracy'] = this._altitudeAccuracy;
    data['heading'] = this._heading;
    data['speed'] = this._speed;
    data['timestamp'] = this._timestamp;
    return data;
  }
}

class Hardware {
  int _cpuCores;

  Hardware({int cpuCores}) {
    this._cpuCores = cpuCores;
  }

  int get cpuCores => _cpuCores;
  set cpuCores(int cpuCores) => _cpuCores = cpuCores;

  Hardware.fromJson(Map<String, dynamic> json) {
    _cpuCores = json['cpu_cores'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cpu_cores'] = this._cpuCores;
    return data;
  }
}
