import 'package:angular/core.dart';
import 'package:logic/logic.dart';

@Component(
  selector: 'video-funnel',
  templateUrl: 'video_funnel.html',
  styleUrls: ['video_funnel.css'],
)
class VideoFunnel implements OnInit {
  VideoFiles video;

  VideoFunnel() {
    this.video = loadData();
  }

  @override
  void ngOnInit() {}
}

VideoFiles loadData() {
  String filePath_mp4 = "/static/video/man.mp4";
  String filePath_webm = "/static/video/man.webm";
  String videoBackgroundImage = "/static/images/desktop/tlm-c621440by900.jpg";
  String video_id = "testvideo";
  VideoFiles x = new VideoFiles(filePath_mp4, filePath_webm, video_id, videoBackgroundImage);
  return x;
}
