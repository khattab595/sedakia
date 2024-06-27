
import 'dart:io';

import 'package:file_saver/file_saver.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../../main_index.dart';
import '../../domain/repositories/home_repo.dart';

@Injectable()
class HomeCubit extends BaseCubit {
  final HomeRepo _repo;

  HomeCubit(this._repo);

  void fetchInitialData() {
    executeSuccess(() => _repo.fetchHomeData());
  }

  void downloadFile(String url) async {
    try {
      emit(LoadingStateListener());

      File? file = await saveFile(url);
      String? msg = await FileSaver.instance.saveAs(
        name: file!.path.split('/').last,
        file: file,
        ext: file.path.split('.').last,
        mimeType: MimeType.other,
      );
      emit(SuccessState());
    } catch (e) {
      emit(FailureStateListener(e));
    }
  }

  Future<File?> saveFile(String documentUrl) async {
    print('documentUrl: $documentUrl');
    try {
      /// setting filename
      final filename = documentUrl.split('/').last;
      String dir = (await getApplicationDocumentsDirectory()).path;
      if (await File('$dir/$filename').exists()) return File('$dir/$filename');

      String url = documentUrl;

      /// requesting http to get url
      var request = await HttpClient().getUrl(Uri.parse(url));

      /// closing request and getting response
      var response = await request.close();

      /// getting response data in bytes
      var bytes = await consolidateHttpClientResponseBytes(response);

      /// generating a local system file with name as 'filename' and path as '$dir/$filename'
      File file = File('$dir/$filename');

      /// writing bytes data of response in the file.
      await file.writeAsBytes(bytes);

      return file;
    } catch (err) {
     rethrow;
    }
  }
}
