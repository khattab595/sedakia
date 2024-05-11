import 'package:app/core/decorations/decorations.dart';
import 'package:app/core/exceptions/extensions.dart';
import 'package:pod_player/pod_player.dart';
import 'package:flutter/material.dart';
import '../../latest_courses/widgets/code_animation.dart';

class PlayVideoFromNetwork extends StatefulWidget {
  final String url;
  final PodPlayerController? controller;
  const PlayVideoFromNetwork({Key? key, required this.url, this.controller}) : super(key: key);

  @override
  State<PlayVideoFromNetwork> createState() => _PlayVideoFromNetworkState();
}

class _PlayVideoFromNetworkState extends State<PlayVideoFromNetwork> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = widget.controller ?? PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
          widget.url
      ),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  bool isFastForwarding = false;
  bool isFastBackward = false;

  @override
  Widget build(BuildContext context) {
    return  PodVideoPlayer(controller: controller,
        overlayBuilder:(OverLayOptions options){
      return
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              InkWell(
                onTapDown: (_) {
                  setState(() {
                    isFastForwarding = true;
                    controller.videoSeekForward(const Duration(seconds: 5));
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    isFastForwarding = false;
                  });
                },
                child: Container(
                  decoration: Decorations.decorationStartEndBorder(
                    topStart: 200,
                    bottomStart: 200,
                  ),
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width*0.40,
                  child: isFastForwarding
                      ? const Icon(Icons.fast_forward,color: Colors.white,) // Show fast forward icon when double-tapped
                      : Container(),
                ),
              ),
              InkWell(

                onTapDown: (_) {
                  setState(() {
                    isFastBackward = true;
                    controller.videoSeekBackward(const Duration(seconds: 5));
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    isFastBackward = false;
                  });
                },
                child: Container(
                  decoration: Decorations.decorationStartEndBorder(
                      topEnd: 200,
                      bottomEnd: 200,
                  ),
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width*0.40,
                  child: isFastBackward
                      ? const Icon(Icons.fast_rewind,color: Colors.white,size: 30,) // Show fast forward icon when double-tapped
                      : Container(),
                ),
              )
            ],),
            Align(
              alignment: Alignment.center,
              child: IconButton(onPressed: (){
                if(controller.isVideoPlaying){
                  controller.pause();
                }else{
                  controller.play();
                }

              }, icon:
              Icon(
                controller.isVideoPlaying==true?
                Icons.pause:Icons.play_arrow,
                color: Colors.white,size: 45,)),
            ),
            Positioned(
              bottom: 5,
              left: 0,
              child: IconButton(
                onPressed: (){
                  if(controller.isFullScreen){
                    controller.disableFullScreen(context);

                  }else{
                    controller.enableFullScreen();
                  }
                },
                icon:  Icon(
                  controller.isFullScreen?
                      Icons.fullscreen_exit_outlined:
                  Icons.fullscreen,color: Colors.white,),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 15,
              child:
             Column(
               children: [
                 Text('${formatTime(controller.totalVideoLength.toString())}/${formatTime(controller.currentVideoPosition.toString())}',style: TextStyle(color: Colors.white),),
               ],
             ),
            ),
            CodeAnimation(),
          ],
        );
      }
    );
  }
  String formatTime(String timeString) {
    List<String> parts = timeString.split(':'); // تقسيم السلسلة الزمنية بواسطة ':'

    int hours = int.parse(parts[0]); // استخراج الساعات
    int minutes = int.parse(parts[1]); // استخراج الدقائق
    double seconds = double.parse(parts[2]); // استخراج الثواني

    String formattedTime;

    if (hours == 0) {
      formattedTime = '${minutes.toString().padLeft(2, '0')}:${seconds.toStringAsFixed(0).padLeft(2, '0')}';
    } else {
      formattedTime = '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toStringAsFixed(0).padLeft(2, '0')}';
    }

    return formattedTime; // إرجاع السلسلة الزمنية المنسقة
  }
  }


