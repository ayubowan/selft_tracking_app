import 'package:flutter/material.dart';
import 'package:selftrackingapp/widgets/custom_text.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../app_localizations.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: CustomText(
            AppLocalizations.of(context).translate("popmenu_privpolicy"),
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: WebView(
          initialUrl: "http://covid19.egreen.io/privacy_policy.html",
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}

//Container(
//          child: FutureBuilder(
//            future: GetIt.instance<DataRepository>().fetchPrivacyPolicy(),
//            builder: (context, snapshot) {
//              switch (snapshot.connectionState) {
//                case ConnectionState.none:
//                  return Center(
//                    child:
//                        CustomText("Failed getting privacy policy, try again later"),
//                  );
//                  break;
//                case ConnectionState.waiting:
//                  return Center(
//                    child: CircularProgressIndicator(),
//                  );
//                  break;
//                case ConnectionState.active:
//                  return Center(
//                    child:
//                        CustomText("Failed getting privacy policy, try again later"),
//                  );
//                  break;
//                case ConnectionState.done:
//                  return Container(
//                    padding: const EdgeInsets.all(20.0),
//                    child: CustomText(snapshot.data),
//                  );
//                  break;
//              }
//            },
//          ),
//        )
