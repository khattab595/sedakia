import 'package:injectable/injectable.dart';

import '../entities/social_media.dart';
import '../repositories/base_community_repo.dart';

@Injectable()
class CommunityUseCase {
  final BaseCommunityRepo repository;

  CommunityUseCase(this.repository);

  Future<List<SocialMedia>> fetchSocialMediaData() async {
  final data = await repository.fetchSocialMediaData();
    return data.map((e) => SocialMedia.fromDto(e)).toList();
  }
}
