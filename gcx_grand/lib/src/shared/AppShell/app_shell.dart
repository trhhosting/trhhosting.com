import 'dart:async';
import 'dart:convert';
import 'dart:html';
// import 'package:http/http.dart' as http; // https://pub.dev/packages/http

import 'package:angular/angular.dart';
import 'package:angular_components/app_layout/material_persistent_drawer.dart';
import 'package:angular_components/app_layout/material_temporary_drawer.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_list/material_list.dart';
import 'package:angular_components/material_list/material_list_item.dart';
import 'package:angular_components/material_toggle/material_toggle.dart';
import 'package:angular_router/angular_router.dart';
import 'package:http_client/browser.dart';

import '../../routes.dart';
import '../common/SvgIcons/svg_icons.dart';
import '../common/PhoneNumber/phone_number.dart';
import '../common/FooterBrand/footer_brand.dart';
import 'package:logic/logic.dart';

@Component(
  selector: 'app-shell',
  templateUrl: 'app_shell.html',
  styleUrls: [
    'package:angular_components/app_layout/layout.scss.css',
    'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    'app_shell.css',
  ],
  directives: [
    routerDirectives,
    coreDirectives,
    DeferredContentDirective,
    MaterialButtonComponent,
    MaterialPersistentDrawerDirective,
    MaterialToggleComponent,
    MaterialListComponent,
    MaterialTemporaryDrawerComponent,
    MaterialListItemComponent,
    MaterialIconComponent,
    SvgIcons,
    FooterBrand,
    PhoneNumber,
  ],
  exports: [
    RoutePaths,
    Routes,
  ],
)
class AppShell implements OnInit, AfterViewInit {
  bool customWidth = false;
  bool end = false;
  bool overlay = false;
  String name = "TRH Hosting";
  String abr = "TRG";
  String logoIcon = "/static/icons/trhhosting/trh_logos_sheet.svg#logo";
  int logoSize = 50;
  String copyright = DateTime.now().year.toString();
  Element menuSub;
  Element menuBtn;
  Element menuTitle;
  bool menuShow = false;
  ColumnOne One = new ColumnOne();
  ColumnTwo Two = new ColumnTwo();
  ColumnThree Three = new ColumnThree();
  ColumnFour Four = new ColumnFour();
  RouteMenuTop Top = new RouteMenuTop();
  RouteMenuSide Side = new RouteMenuSide();
  IconLogo Logo = new IconLogo();


  @ViewChild('navbar1')
  Element navbar1;
  @ViewChild('navbar2')
  Element navbar2;

  int sticky = 0;
  String hash = "";
  //todo set to false for production
  bool devlopement = true;

  @override
  Future<void> ngOnInit() async {
    menuSub = await querySelector("#menu-sub");
    menuBtn = await querySelector("#menu-btn");
    menuTitle = await querySelector("#menu-title");
    this.customWidth = false;
    this.end = true;
    this.overlay = false;
    
    String _footerLogoData = await dataLogo(devlopement);
    loadLogoData(_footerLogoData);
    String _footerRawData = await dataFooter(devlopement);
    loadFooterData(_footerRawData);
    String _menuRawData = await dataMenu(devlopement);
    loadMenuData(_menuRawData);

    hash = await getData("hash");
    if(hash == null){
      String hsh = await dataGetHash();
      await setData("hash", hsh);
    }
    // print(hash); 

  }
  @override
  void ngAfterViewInit() async{
    await window.onScroll.forEach((Event e){
      turnOffSticky();
    });

  }
  void loadFooterData(String data) {
    var x = jsonDecode(data);
    this.One = ColumnOne.fromJson(x['ColumnOne']);
    this.Two = ColumnTwo.fromJson(x['ColumnTwo']);
    this.Three = ColumnThree.fromJson(x['ColumnThree']);
    this.Four = ColumnFour.fromJson(x['ColumnFour']);
  }

  void loadLogoData(String data) {
    var x = jsonDecode(data);
    this.Logo = IconLogo.fromJson(x);
  }

  void loadMenuData(String data) {
    var x = jsonDecode(data);
    this.Side = RouteMenuSide.fromJson(x['RouteMenuSide']);
    this.Top = RouteMenuTop.fromJson(x['RouteMenuTop']);
  }
  void pageTop(){
    window.scrollTo(0,0);
  }
  void turnOffSticky() {
    if (window.pageYOffset > 0 && sticky == 0) {
      navbar2.hidden = false;
      navbar1.hidden = true;
      sticky = 1;
      // print(window.pageYOffset);
    }
    else if(window.pageYOffset == 0) {
      // print("hello this oner");
      navbar2.hidden = true;
      navbar1.hidden = false;
      sticky = 0;
    } 
  }
 
}
String domain = "";
Future<String> dataFooter(bool dev) async {
  domain = window.location.host;
  final client = new BrowserClient();
  if(!dev){
    final rs = await client.send(new Request('GET', '/api/static/data/footer/$domain'));
    final textContent = await rs.readAsString();
    await client.close();
    return jsonDecode(textContent);
  }
  
  final rs = await client.send(new Request('GET', '/static/data/footer.json'));
  final textContent = await rs.readAsString();
  await client.close();
  return textContent;
}

Future<String> dataMenu(bool dev) async {
  domain = window.location.host;
  final client = new BrowserClient();
  if(!dev){
    final rs = await client.send(new Request('GET', '/api/static/data/menu/$domain'));
    final textContent = await rs.readAsString();
    await client.close();
    return jsonDecode(textContent);
  }
  
  final rs = await client.send(new Request('GET', '/static/data/menu.json'));
  final textContent = await rs.readAsString();
  await client.close();
  return textContent;
}

Future<String> dataLogo(bool dev) async {
  domain = window.location.host;
  final client = new BrowserClient();
  if(!dev){
    final rs = await client.send(new Request('GET', '/api/static/data/logo/$domain'));
    final textContent = await rs.readAsString();
    await client.close();
    return jsonDecode(textContent);
  }
  
  final rs = await client.send(new Request('GET', '/static/data/logo.json'));
  final textContent = await rs.readAsString();
  await client.close();
  return textContent;
}

Future<String> dataGetHash() async {
  final client = new BrowserClient();
  final rs = await client.send(new Request('GET', '/api/v1/get/hash/home'));
  final textContent = await rs.readAsString();
  await client.close();
  return textContent;
}
