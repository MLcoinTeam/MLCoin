/*
*  api_client.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-02
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
import 'package:dio/dio.dart';
////
class ApiClient{
  ///
  factory ApiClient(client,) {
    if (instance == null) {
      instance                                  = new ApiClient._internal(client);
      instance.client.options.followRedirects   = false;
      instance.client.options.validateStatus    =  (status){ return status < 500;};
    }
    return instance;
  }
  /// metodo per eliminare l'istanza creata
  static void reset(){
    instance = null;
  }
  ApiClient._internal(this.client,);
  ///
  final Dio client;
  static ApiClient instance;
  ///
  ///
}