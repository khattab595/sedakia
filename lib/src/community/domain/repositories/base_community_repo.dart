
import '../../data/models/social_media_dto.dart';

abstract class BaseCommunityRepo {
  Future<List<SocialMediaDto>> fetchSocialMediaData();
}
