import 'dart:io';


import '../../../../core/utils/helper_methods.dart';
import '../../../../core/widgets/images/image_network.dart';
import '../../../main_index.dart';

class EditProfileImage extends BaseStatelessWidget {
  final String image;
  final Function(File) onSelectImage;

  EditProfileImage({super.key, required this.image, required this.onSelectImage});

  @override
  Widget build(BuildContext context) {
    StreamStateInitial<File?> _imageStream = StreamStateInitial();
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: context.secondaryContainer,
            shape: BoxShape.circle,
          ),
          child: StreamBuilder<File?>(
              stream: _imageStream.stream,
              builder: (context, snapshot) {
                return snapshot.data != null
                    ? Image.file(
                        snapshot.data!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      )
                    : ImageNetworkCircle(
                        image: image,
                        width: 100,
                        height: 100,
                      );
              }),
        ),
        PositionedDirectional(
          end: 15,
          bottom: 0,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              icon:
                  Icon(Icons.camera_alt_outlined, color: context.primaryColor, size: 20),
              onPressed: () async {
                final file = await HelperMethods.getImagePicker();
                _imageStream.setData(File(file!.path));
                onSelectImage(File(file.path));
              },
            ),
          ),
        ),
      ],
    );
  }
}
