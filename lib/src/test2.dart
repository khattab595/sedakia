import 'package:pod_player/pod_player.dart';
import 'courses/presentation/details/widgets/custom_pod_player.dart';
import 'main_index.dart';

class Test2 extends StatefulWidget {
   const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
   final String url =
       'https://www.youtube.com/watch?v=m3GEMLMbuKA&list=RDm3GEMLMbuKA&start_radio=1'
   ;
   PodPlayerController? controller2;

   PodPlayerController? controller;
   @override
  void initState() {
     controller=  PodPlayerController(
       playVideoFrom: PlayVideoFrom.youtube(
           url    ),
     )..initialise();
     controller2=  PodPlayerController(
       playVideoFrom: PlayVideoFrom.youtube(
           'https://www.youtube.com/watch?v=L4MTSb85fog&list=RDL4MTSb85fog&start_radio=1'    ),
     )..initialise();
     super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('بسم الله الرحمن الرحيم')),
          100.ph,
          // PodVideoPlayer(
          //   controller: controller2!,),
          50.ph,
          PlayVideoFromNetwork(
            url:url,
            controller: controller,
          ),
        ],
      ),
    );
  }
}
