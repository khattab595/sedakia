
import '../../data/models/token_dto.dart';

class Token {
  String? token;

  Token({this.token});

   factory Token.fromDto(TokenDto json) => Token(token: json.token);
}

