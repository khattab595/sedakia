
import 'package:injectable/injectable.dart';

import '../../domain/repositories/base_community_repo.dart';
import '../data_sources/community_datasource.dart';
import '../models/social_media_dto.dart';


@Injectable(as: BaseCommunityRepo)
class CommunityRepo extends BaseCommunityRepo{
  final CommunityDatasource  datasource;
  CommunityRepo(this.datasource);

  @override
  Future<List<SocialMediaDto>> fetchSocialMediaData() async{
    final data = await datasource.fetchSocialMediaData();
    return data.data!;
  }

}