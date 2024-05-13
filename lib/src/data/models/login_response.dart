class LoginResponse {
  String message;
  String accessToken;
  String tokenType;

  LoginResponse({
    required this.message,
    required this.accessToken,
    required this.tokenType,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    message: json["message"],
    accessToken: json["access_token"],
    tokenType: json["token_type"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "access_token": accessToken,
    "token_type": tokenType,
  };
}