class UserDataResponse {
    int error;
    String message;
    String token;

    UserDataResponse({ required this.error, required this.message, required this.token});

    factory UserDataResponse.fromJson(Map<String, dynamic> json) {
        return UserDataResponse(
            error: json['error'],
            message: json['message'],
            token: json['token'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['error'] = this.error;
        data['message'] = this.message;
        data['token'] = this.token;

        return data;
    }
}
