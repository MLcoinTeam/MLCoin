/** 
*  validators.dart
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-02
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
///
class Validators {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  static final RegExp _passwordRegExp = RegExp(
    // da sistemare la regex assolutamente!
    r'^[a-zA-Z0-9]+$',
    //r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
    //r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
  );
  ///
  static isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }
  ///
  static isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }
}