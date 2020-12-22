import 'package:angular_router/angular_router.dart';

import 'Grand/pages/Home/home.template.dart' as home_template;
import 'Grand/pages/Licenses/licenses.template.dart' as licenses_template;
import 'Grand/pages/ReceivedApplication/received_application.template.dart' as received_application_template;

import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.HomeNgFactory,
    useAsDefault: true,
  );
  static final licenses = RouteDefinition(
    routePath: RoutePaths.licenses,
    component: licenses_template.LicensesNgFactory,
  );
  static final received_application = RouteDefinition(
    routePath: RoutePaths.receivedApplication,
    component: received_application_template.ReceivedApplicationNgFactory,
  );
  static final all = <RouteDefinition>[
    home,
    licenses,
    received_application,
  ];
}

/*
About
AddProduct
BlogPost
BlogPosts
ContactUs
Discover
Ecommerce
Home
Landing
Licenses
Login
P404
P422
P500
Product
Profile
Register
SearchSidebar
Settings
TeamInfo

class Routes {
  static final crises = RouteDefinition(
    routePath: RoutePaths.crises,
    component: crisis_list_template.CrisisListComponentNgFactory,
  );

  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
  );

  static final hero = RouteDefinition(
    routePath: RoutePaths.hero,
    component: hero_template.HeroComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    crises,
    heroes,
    hero,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.heroes.toUrl(),
    ),
    RouteDefinition(
      path: '.*',
      component: not_found_template.NotFoundComponentNgFactory,
    ),
  ];
}

static final about_us = RouteDefinition( routePath: RoutePaths.aboutUs );
static final add_product = RouteDefinition( routePath: RoutePaths.addProduct );
static final blog_post = RouteDefinition( routePath: RoutePaths.blogPost );
static final blog_posts = RouteDefinition( routePath: RoutePaths.blogPosts );
static final discover = RouteDefinition( routePath: RoutePaths.discover );
static final e_commerce = RouteDefinition( routePath: RoutePaths.eCommerce );
static final landing = RouteDefinition( routePath: RoutePaths.landing );
static final login = RouteDefinition( routePath: RoutePaths.login );
static final p404 = RouteDefinition( routePath: RoutePaths.p404 );
static final p422 = RouteDefinition( routePath: RoutePaths.p422 );
static final p500 = RouteDefinition( routePath: RoutePaths.p500 );
static final product = RouteDefinition( routePath: RoutePaths.product );
static final profile = RouteDefinition( routePath: RoutePaths.profile );
static final register = RouteDefinition( routePath: RoutePaths.register );
static final search_sidebar = RouteDefinition( routePath: RoutePaths.searchSidebar );
static final settings = RouteDefinition( routePath: RoutePaths.settings );
static final team = RouteDefinition( routePath: RoutePaths.team );


 */

/* count 16 pages
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
