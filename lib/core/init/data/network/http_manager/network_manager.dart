import 'dart:convert';
import 'dart:io';
import 'package:mevsimiwarehouse/core/_core_exports.dart';
import 'package:http/http.dart' as http;
import 'package:mevsimiwarehouse/core/utiliyt/error_snackbar.dart';

class BaseService {
  static BaseService? _instance;
  static BaseService get instance {
    _instance ??= BaseService._init();
    return _instance!;
  }

  BaseService._init();

  Future<dynamic> get<T extends BaseModel>(String path,
      {required BaseModel model}) async {
    try {
      var url = Uri.parse("${ApplicationConstants.NETWORKAPIBASEURL}/$path");
      final response = await http.get(url, headers: {
        ApplicationConstants.NETWORKTOKENNAME:
            ApplicationConstants.NETWORKAPPTOKEN
      });
      var body = jsonDecode(response.body);
      switch (response.statusCode) {
        case HttpStatus.ok:
          return jsonBodyParse(model, body["result"]);
        case 400:
          return ErrorSnackBar().showMessageSnackBar(body["errors"].toString());
        default:
          return ErrorSnackBar()
              .showMessageSnackBar(response.statusCode.toString());
      }
    } catch (e) {
      ErrorSnackBar().showMessageSnackBar(e.toString());
    }
  }

  Future<dynamic> post<T extends BaseModel>(String path,
      {required BaseModel model, required BaseModel param}) async {
    try {
      Object paramJson;
      if (path == ApplicationConstants.NETWORKAPILOGIN) {
        paramJson = param.toJson();
      } else {
        paramJson = jsonEncode(param);
      }
      var url = Uri.parse("${ApplicationConstants.NETWORKAPIBASEURL}/$path");
      final response = await http.post(url, body: paramJson, headers: {
        ApplicationConstants.NETWORKTOKENNAME:
            ApplicationConstants.NETWORKAPPTOKEN,
        "Accept": "application/json"
      });
      var body = jsonDecode(response.body);
      switch (response.statusCode) {
        case HttpStatus.ok:
          return jsonBodyParse(model, body["result"]);
        case 400:
          return ErrorSnackBar().showMessageSnackBar(body["errors"].toString());
        default:
          return ErrorSnackBar()
              .showMessageSnackBar(response.statusCode.toString());
      }
    } catch (e) {
      ErrorSnackBar().showMessageSnackBar(e.toString());
    }
  }
}
