import '../_core_exports.dart';

extension NetworkTypeExtension on HttpTypes? {
  String get rawValue {
    switch (this) {
      case HttpTypes.GET:
        return 'GET';
      case HttpTypes.POST:
        return 'POST';
      default:
        throw 'ERROR TYPE';
    }
  }
}

extension JsonParse on BaseService {
  dynamic jsonBodyParse<T>(BaseModel model, var body) {
    if (body is List) {
      return body.map((e) => model.fromJson(e)).toList().cast<BaseModel>();
    } else if (body is Type) {
      return body;
    } else if (body is Map<String, dynamic>) {
      return model.fromJson(body);
    } else {
      return body;
    }
  }
}
