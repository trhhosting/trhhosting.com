import 'dart:html';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_client/browser.dart';

import 'user_info.dart';

import 'db.dart';
void _trkView(String data) async{
  var url = '/api/data/lead/trh/';
  var headers = <String,String>{}; 
  headers = {'Content-Type':'application/json'};
  await http.post(url,headers: headers, body: data);
}
Future<String> _getHash() async {
  final client = BrowserClient();
  final rs = await client.send(Request('GET', '/api/v1/gcx/hash/'));
  final textContent = await rs.readAsString();
  await client.close();
  return textContent;
}
Future<String> _storeHash() async {
    String hsh = "";
    String tmp = "";
    tmp = await getData('gcxhash');
    if (tmp == null){
      hsh = await _getHash();
      await setData('gcxhash', hsh);
    } 
    if (tmp != null){
      hsh = tmp;
    }
    return hsh;
  }


void websiteRequest(String msg, String website) async{
  String domain = window.location.href;
  List<int> bytes = utf8.encode(msg);
  String base64Str = base64.encode(bytes);
  List<int> webSitebytes = utf8.encode(website);
  String webSitebase64Str = base64.encode(webSitebytes);
  String hash = await _storeHash();
  String trkHash = getTrakInfo();
  String st = '''{
    "app_name":"trh-wordpress",
    "bot_name":"TRH Hosting",
    "name": "${domain}",
    "message": "${base64Str}",
    "hash": "${hash}",
    "trk_hash":"${trkHash}",
    "website":"${webSitebase64Str}"
  }''';
  _trkView(st);
}