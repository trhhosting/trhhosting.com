import 'dart:html';
import 'dart:convert';

import 'trkinfo.dart';


String getTrakInfo(){
  DateTime time = DateTime.now();
  // final Coordinates lo = null;

  TimeInfo timeInfo = TimeInfo();
  timeInfo.timeOpened = time.toString();
  timeInfo.timezone = time.timeZoneOffset.toString();
  Browser browser = Browser();
  browser.browserName = window.navigator.appName.toString();
  browser.browserEngine = window.navigator.product.toString();
  browser.browserVersion1a = window.navigator.appVersion.toString();
  browser.browserVersion1b = window.navigator.userAgent.toString();
  browser.browserOnline = window.navigator.onLine.toString();
  browser.browserPlatform = window.navigator.platform.toString();
  browser.dataCookiesEnabled = window.navigator.cookieEnabled;
  browser.dataCookies1 = window.document.cookie;
  browser.dataCookies2 = window.document.cookie.split(";").toString();
  browser.dataStorage = window.localStorage.toString();
  Screen screen = Screen();
  screen.sizeScreenW = window.screen.width;
  screen.sizeScreenH = window.screen.height;
  screen.sizeDocW = window.screenX;
  screen.sizeDocH = window.screenY;
  screen.sizeInW = window.innerWidth;
  screen.sizeInH = window.innerHeight;
  screen.sizeAvailW = window.screen.available.width;
  screen.sizeAvailH = window.screen.available.height;
  screen.scrColorDepth = window.screen.colorDepth;
  screen.scrPixelDepth = window.screen.pixelDepth;
  Location location = Location();
  // location.latitude = lo.longitude.toString();//lo.latitude.toString();
  // location.longitude = lo.longitude.toString();
  // location.accuracy = lo.accuracy.toString();
  // location.altitude = lo.altitude.toString();
  // location.altitudeAccuracy = lo.altitudeAccuracy.toString();
  // location.heading = lo.heading.toString();
  // location.speed = lo.speed.toString();
  location.timestamp = DateTime.now().toString();
  
  Hardware hardware = Hardware();
  hardware.cpuCores = window.navigator.hardwareConcurrency;

  SitesPaths sitesPaths = SitesPaths();
  sitesPaths.pageon = window.location.pathname;
  sitesPaths.referrer = document.referrer;

  trkinfo x = trkinfo(
    timeInfo: timeInfo,
    sitesPaths: sitesPaths,
    browser: browser,
    screen: screen,
    location: location,
    hardware: hardware,
  );

  List<int> bytes = utf8.encode(jsonEncode(x));
  return base64.encode(bytes);
}