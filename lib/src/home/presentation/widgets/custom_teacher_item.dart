import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class CustomTeacherItem extends BaseStatelessWidget {
   CustomTeacherItem( {super.key,this.height, this.width,});
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height:height??150,
            width:width?? 120,
            child: ImageNetwork(image: courseImageTest2,radius: 12,fit: BoxFit.cover,)),
        const Positioned(
            bottom: 2,
            right: 5,
            child:
            Column(children: [
              MediumText(
                label:'مازن محمد',
                fontSize: 10,
                labelColor: Colors.white,
              ),
              MediumText(
                label:'فيزياء',
                fontSize: 8,
                labelColor: Colors.white,
              ),
            ],))

      ],
    );
  }
   String courseImageTest2='https://internationalteacherstraining.com/blog/wp-content/uploads/2018/08/171219-teacher-stock.jpg';

}
