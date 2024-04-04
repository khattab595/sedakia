import '../../data/models/profile_dto.dart';

class Profile {
  final String name;
  final String email;
  final String phone;
  List<StoreDto>? stores;

  Profile({
    required this.name,
    required this.email,
    required this.phone,
    required this.stores,
  });

  factory Profile.fromJson(ProfileDto json) {
    return Profile(
      name: json.name ?? '',
      email: json.email ?? '',
      phone: json.phone ?? '',
      stores: json.stores,
    );
  }
}
