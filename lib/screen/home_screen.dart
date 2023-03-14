import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai/');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('code factory'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () {
              //http://
              //https://
              // if (controller == null) {
              //   return;
              // }
              controller.loadRequest(homeUrl);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body:
          // WebView(
          //   onWebViewCreated: (WebViewController controller) {
          //     this.controller = controller;
          //   },
          //   initialUrl: homeUrl,
          //   javascriptMode: JavascriptMode.unrestricted,
          // ),
          WebViewWidget(
        controller: controller,
      ),
    );
  }
}
