class LostResponse {
    List<LostData>? data;
    int? error;
    String? message;

    LostResponse({this.data, this.error, this.message});

    factory LostResponse.fromJson(Map<String, dynamic> json) {
        return LostResponse(
            data: json['data'] != null ? (json['data'] as List).map((i) => LostData.fromJson(i)).toList() : null,
            error: json['error'],
            message: json['message'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['error'] = this.error;
        data['message'] = this.message;
        if (this.data != null) {
            data['data'] = this.data!.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class LostData {
    String age;
    int id;
    String image;
    String name;
    String? title;

    LostData({required this.age, required this.id, required this.image, required this.name, this.title});

    factory LostData.fromJson(Map<String, dynamic> json) {
        return LostData(
            age: json['age'],
            id: json['id'],
            image: json['image'],
            name: json['name'],
            title: json['title'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['age'] = this.age;
        data['id'] = this.id;
        data['image'] = this.image;
        data['name'] = this.name;
        data['title'] = this.title;
        return data;
    }
}