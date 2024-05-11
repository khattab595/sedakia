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
                  });
                  controller.videoSeekForward(const Duration(seconds: 5));
                },
                onTapUp: (_) {
                  setState(() {
                    isFastForwarding = false;
                  });
                },
                child: SizedBox(
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width*0.45,
                  child: isFastForwarding
                      ? const Icon(Icons.fast_forward,color: Colors.white,) // Show fast forward icon when double-tapped
                      : Container(),
                ),
              ),
              InkWell(
                onTapDown: (_) {
                  setState(() {
                    isFastBackward = true;
                  });
                  controller.videoSeekBackward(const Duration(seconds: 5));
                },
                onTapUp: (_) {
                  setState(() {
                    isFastBackward = false;
                  });
                },
                child: SizedBox(
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width*0.45,
                  child: isFastBackward
                      ? const Icon(Icons.fast_rewind,color: Colors.white,) // Show fast forward icon when double-tapped
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
                color: Colors.white,)),
            ),
            Align(
              alignment: Alignment.bottomLeft,
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
            CodeAnimation(),
          ],
        );
      }
    );
  }
}