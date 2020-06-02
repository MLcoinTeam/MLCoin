/** 
*  text_form.dart
*  mlcoin_app 2020-06-02.
*  mlcoin_app 2020-06-02
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
///
import 'package:flutter/material.dart';
///
class TextFormFieldAtom extends StatelessWidget {
  final TextEditingController formController;
  final bool validator, obscureText;
  final String errorValidatorText, labelText;
  final TextInputType textInputType;
  ///
  const TextFormFieldAtom({
    @required this.formController,
    @required this.validator,
    @required this.errorValidatorText,
    this.obscureText    =  false, 
    this.labelText      = 'Email',
    this.textInputType  = TextInputType.emailAddress,
  });
  ///
  const TextFormFieldAtom.password({
    @required this.formController,
    @required this.validator,
    @required this.errorValidatorText,
    this.obscureText   =  true, 
    this.labelText     = 'Password', 
    this.textInputType = TextInputType.visiblePassword,
  });
  ///
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: formController,
      decoration: InputDecoration(
        // Da sistemare con l'init e la variabile
        //icon: Icon(Icons.email),
        labelText: labelText,
      ),
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      autovalidate: true,
      autocorrect: false,
      validator: (_) {
        return !validator ? errorValidatorText : null;
      },
    );
  }
}