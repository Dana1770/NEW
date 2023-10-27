import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget{
  final String url;

  const WebViewScreen(this.url, {super.key});
  @override
  Widget build(BuildContext context) {
    var controller = WebViewController()..setJavaScriptMode(JavaScriptMode.disabled)..loadRequest(Uri.parse(url));
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,
      leading: BackButton(
        color: Colors.black,
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      ),
      body:WebViewWidget(
        controller: controller,
        

      ),    );
  }

}