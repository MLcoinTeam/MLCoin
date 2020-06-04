/*
*  input.dart
*  
*  mlcoin_app 2020-06-04
*  mlcoin_app 2020-06-04
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
//
import 'package:flutter/material.dart';
///
///
class MoleculesInput extends StatelessWidget {
  
  final String label;
  final String placeholder;
  final ValueChanged<String> onChanged;
  final TextInputType type;

  const MoleculesInput({
    @required this.label,
    @required this.placeholder,
    @required this.onChanged,
    @required this.type,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 2),
              child: Text(
                label,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          TextFieldAtom(textInputType: type, placeHolder: placeholder, onChanged: onChanged, isBorder: true,),
        ],
      ),
    );
  }
}
