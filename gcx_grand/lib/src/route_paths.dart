import 'package:angular/core.dart';
import 'package:angular_router/angular_router.dart';
import 'package:logic/logic.dart';

class RoutePaths {
  static final home = RoutePath(path: "home");
  static final licenses = RoutePath(path: "licenses");
  static final receivedApplication = RoutePath(path:'received-application');
}

@Injectable()
class RouteMenu {
  int _id;
  String _title;
  String _subTitle;
  RouteMenu.data(this._title, this._subTitle, [this._id]);
  RouteMenu();
  factory RouteMenu.fromJason(Map<String, dynamic> json) => _routeMenuFromJson(json);
  //id
  int get id => this._id;
  set id(int id) {
    this._id = id;
  }

  //title
  String get title => this._title;
  set title(String title) {
    this._title = title;
  }

  //subTitle
  String get subTitle => this._subTitle;
  set subTitle(String subTitle) {
    this._subTitle = subTitle;
  }
}

RouteMenu _routeMenuFromJson(Map<String, dynamic> json) {
  RouteMenu x = new RouteMenu();
  x.id = json["id"];
  x.title = json["title"];
  x.subTitle = json["subTitle"];
  return x;
}

class RouteMenuSide extends RouteMenu {
  List<MenuIcon> _menuIcons;
  RouteMenuSide();
  RouteMenuSide.data(this._menuIcons);
  factory RouteMenuSide.fromJson(Map<String, dynamic> json) => _routeMenuSideFromJson(json);
  //menuIcons Shell Tray icons list
  List<MenuIcon> get menuIcons => this._menuIcons;
  set menuIcons(List<MenuIcon> menuIcons) {
    this._menuIcons = menuIcons;
  }
}

RouteMenuSide _routeMenuSideFromJson(Map<String, dynamic> json) {
  RouteMenuSide x = new RouteMenuSide();
  x.menuIcons = _menuIconData(json['menuIcons']);
  return x;
}

class RouteMenuTop extends RouteMenu {
  List<MenuIcon> _menuIcons;
  RouteMenuTop();
  RouteMenuTop.data(this._menuIcons);
  factory RouteMenuTop.fromJson(Map<String, dynamic> json) => _routeMenuTopFromJson(json);
  //menuIcons Shell Tray icons list
  List<MenuIcon> get menuIcons => this._menuIcons;
  set menuIcons(List<MenuIcon> menuIcons) {
    this._menuIcons = menuIcons;
  }
}

RouteMenuTop _routeMenuTopFromJson(Map<String, dynamic> json) {
  RouteMenuTop x = new RouteMenuTop();
  x.menuIcons = _menuIconData(json['menuIcons']);
  return x;
}

List<MenuIcon> _menuIconData(List<dynamic> json) {
  List<MenuIcon> x = <MenuIcon>[];
  for (int i = 0; i < json.length; i++) {
//    int id = i - 1;
    MenuIcon dat = new MenuIcon.fromJson(json[i]);
    x.add(dat);
  }
  return x;
}

class MenuIcon {
  int _id;
  String _classFormat;
  String _routerLink;
  String _routerLinkActive;
  IconData _icon;
  MenuIcon.data(this._classFormat, this._routerLink, this._routerLinkActive, [this._id]);
  MenuIcon();
  factory MenuIcon.fromJson(Map<String, dynamic> json) => _menuIconFromJson(json);
  //id
  int get id => this._id;
  set id(int id) {
    this._id = id;
  }

  //classFormat
  String get classFormat => this._classFormat;
  set classFormat(String classFormat) {
    this._classFormat = classFormat;
  }

  //routerLink
  String get routerLink => this._routerLink;
  set routerLink(String routerLink) {
    this._routerLink = routerLink;
  }

  //routerLinkActive
  String get routerLinkActive => this._routerLinkActive;
  set routerLinkActive(String routerLinkActive) {
    this._routerLinkActive = routerLinkActive;
  }

  //icon
  IconData get icon => this._icon;
  set icon(IconData icon) {
    this._icon = icon;
  }
}

MenuIcon _menuIconFromJson(Map<String, dynamic> json) {
  MenuIcon x = new MenuIcon();
  x.id = json['id'];
  x.classFormat = json['classFormat'];
  x.routerLink = RoutePath(path: json['routerLink']).toUrl();
  x.routerLinkActive = json['routerLinkActive'];
  x.icon = IconData.fromJson(json['icon']);
  return x;
}
/*
*
_classFormat
_icon
_title
_height
_width*/
/*
aboutUs
addProduct
blogPost
blogPosts
discover
eCommerce
landing
login
p404
p422
p500
product
profile
register
searchSidebar
settings
team
*/
