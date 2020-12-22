import 'package:angular/angular.dart';

@Component(
  selector: 'svg-icons',
  templateUrl: 'svg_icons.html',
  styleUrls: ['svg_icons.css'],
)
class SvgIcons {
  int _svgWidth;
  int _svgHeight;
  String _svgClass;
  String _svgIcon;
  SvgIcons();
  //svgWidth
  int get svgWidth => this._svgWidth;
  @Input()
  set svgWidth(int svgWidth) {
    this._svgWidth = svgWidth;
  }

  //svgHeight
  int get svgHeight => this._svgHeight;
  @Input()
  set svgHeight(int svgHeight) {
    this._svgHeight = svgHeight;
  }

  //svgClass
  String get svgClass => this._svgClass;
  set svgClass(String svgClass) {
    this._svgClass = svgClass;
  }

  //svgIcon
  String get svgIcon => this._svgIcon;
  @Input()
  set svgIcon(String svgIcon) {
    this._svgIcon = svgIcon;
  }
}
/*
*   void ngOnInit() {
/*
    var v = new NodeValidatorBuilder();
    v.allowSvg();
    v.allowCustomElement("use", uriAttributes: ["href"]);
    var t = new NodeTreeSanitizer(v);
    Element gcxSvgTmp = querySelector('#gcx-sprite-icon');
    gcxSvgTmp.attributes = {
      "width": svgWidth.toString(),
      "height": svgHeight.toString(),
    };
    gcxSvgTmp.setInnerHtml(_iconUseSting(), treeSanitizer: t);
*/
  }

  String _iconUseSting() {
    String tmp = '''
<use href="${iconName}"></use>
''';
    return tmp;
  }
*
* */
