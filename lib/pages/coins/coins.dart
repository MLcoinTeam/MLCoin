/*
*  coins.dart
*  mlcoin_app 2020-04-02
*  mlcoin_app 2020-06-03
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Copyright © 2020 [Filippo Fresilli & Allan Nava]. All rights reserved.
*/
import 'package:flutter/cupertino.dart';

///
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/colors.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
import 'dart:io' show Platform;

///
class CoinsPage extends StatefulWidget {
  // id for routes
  static const String id = 'coins_page';
  @override
  _CoinsPageState createState() => _CoinsPageState();
}

//
class _CoinsPageState extends State<CoinsPage> {
  bool tappedYes = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: kBgSemiWhite,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: AppColors.paletteGreyColor,
            trailing: InkWell(
              child: Icon(
                Icons.add,
              ),
              onTap: () async {
                final action = await Dialogs.yesAbortDialog(
                  context,
                  'Nuova raccolta',
                  'Inserisci un nome per questa raccolta:',
                );
                if (action == DialogAction.yes) {
                  setState(() => tappedYes = true);
                } else {
                  setState(() => tappedYes = false);
                }
              },
            ),
            largeTitle: Text(
              'Monete',
              style: TextStyle(
                color: AppColors.primary1,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 200,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    child: Center(
                      child: AtomText(
                        "Inizia creando la tua prima raccolta di monete con il seguente bottone:",
                        color: AppColors.paletteGreyColor,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    padding: kPaddingSettings,
                    child: InkWell(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.paletteGreyColor,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Center(
                          child: Text(
                            'Crea una raccolta di monete',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        final action = await Dialogs.yesAbortDialog(
                          context,
                          'Nuova raccolta',
                          'Inserisci un nome per questa raccolta:',
                        );
                        if (action == DialogAction.yes) {
                          setState(() => tappedYes = true);
                        } else {
                          setState(() => tappedYes = false);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// AlertDialog useful to create a new album
// TODO: Cupertino AlertDialog
enum DialogAction { yes, abort }

class Dialogs {
  static Future<DialogAction> yesAbortDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                body,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                autofocus: true,
                decoration: InputDecoration(
                  //labelText: 'Full Name',
                  hintText: 'es. EUR monete',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(DialogAction.abort),
              child: Text(
                'Annulla',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              color: AppColors.paletteBlueColor,
              onPressed: () => Navigator.of(context).pop(DialogAction.yes),
              child: Text(
                'Salva',
              ),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : DialogAction.abort;
  }
}
