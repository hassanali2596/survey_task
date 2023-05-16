class ReportsResponse {
    List<ReportModel>? data;
    int error;
    String message;

    ReportsResponse({required this.data, required this.error, required this.message});

    factory ReportsResponse.fromJson(Map<String, dynamic> json) {
        return ReportsResponse(
            data: json['data'] != null ? (json['data'] as List).map((i) => ReportModel.fromJson(i)).toList() : null,
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

class ReportModel {
    int? accountant_ID;
    AccountantDetails? accountant_details;
    int? clientID;
    ClientDetails? client_details;
    String created_at;
    int ?id;
    String report;

    ReportModel({this.accountant_ID, this.accountant_details, this.clientID, this.client_details,
        required this.created_at, this.id, required this.report});

    factory ReportModel.fromJson(Map<String, dynamic> json) {
        return ReportModel(
            accountant_ID: json['accountant_ID'],
            accountant_details: json['accountant_details'] != null ? AccountantDetails.fromJson(json['accountant_details']) : null,
            clientID: json['clientID'],
            client_details: json['client_details'] != null ? ClientDetails.fromJson(json['client_details']) : null,
            created_at: json['created_at'],
            id: json['id'],
            report: json['report'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['accountant_ID'] = this.accountant_ID;
        data['clientID'] = this.clientID;
        data['created_at'] = this.created_at;
        data['id'] = this.id;
        data['report'] = this.report;
        if (this.accountant_details != null) {
            data['accountant_details'] = this.accountant_details!.toJson();
        }
        if (this.client_details != null) {
            data['client_details'] = this.client_details!.toJson();
        }
        return data;
    }
}

class AccountantDetails {
    String first_name;
    int id;
    String image;
    String last_name;

    AccountantDetails({required this.first_name, required this.id, required this.image, required this.last_name});

    factory AccountantDetails.fromJson(Map<String, dynamic> json) {
        return AccountantDetails(
            first_name: json['first_name'],
            id: json['id'],
            image: json['image'],
            last_name: json['last_name'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['first_name'] = this.first_name;
        data['id'] = this.id;
        data['image'] = this.image;
        data['last_name'] = this.last_name;
        return data;
    }
}

class ClientDetails {
    String first_name;
    int id;
    String image;
    String last_name;

    ClientDetails({required this.first_name, required this.id, required this.image, required this.last_name});

    factory ClientDetails.fromJson(Map<String, dynamic> json) {
        return ClientDetails(
            first_name: json['first_name'],
            id: json['id'],
            image: json['image'],
            last_name: json['last_name'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['first_name'] = this.first_name;
        data['id'] = this.id;
        data['image'] = this.image;
        data['last_name'] = this.last_name;
        return data;
    }
}