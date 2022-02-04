import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';


class WebViewXPage extends StatefulWidget {
  const WebViewXPage({
    Key? key,
  }) : super(key: key);

  @override
  _WebViewXPageState createState() => _WebViewXPageState();
}

class _WebViewXPageState extends State<WebViewXPage> {
  late WebViewXController webviewController;

  Size get screenSize =>
      MediaQuery
          .of(context)
          .size;

  @override
  void dispose() {
    webviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildWebViewX()),
    );
  }

  Widget _buildWebViewX() {
    return WebViewX(
      height: screenSize.height,
      width: screenSize.width,
      onWebViewCreated: (controller) {
        webviewController = controller;
        webviewController.loadContent(
          'https://youinroll.com',
          SourceType.url,
        );
      },
    );
  }
}