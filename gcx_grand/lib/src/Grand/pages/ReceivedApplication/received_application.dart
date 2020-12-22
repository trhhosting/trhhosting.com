import 'package:angular/angular.dart';
import 'package:logic/logic.dart';

@Component(
  selector: 'received-application',
  templateUrl: 'received_application.html',
  styleUrls: [
    'seen.css'
  ],
)
class ReceivedApplication implements OnInit{
  String name = ""; 
  @override
  void ngOnInit() async{
    name = await getData("name");
  }
}
