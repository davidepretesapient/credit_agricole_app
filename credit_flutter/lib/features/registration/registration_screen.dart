import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(
          'https://preprod-homeinsurance.notprod.net/auth/realms/hi/protocol/openid-connect/auth?client_id=app-compagnie&response_type=code&scope=openid%20profile%20email%20offline_access&redirect_uri=https://statickc.s3.eu-west-1.amazonaws.com/index.html&state=f14f096f76c2aaf4c4f89a2270400805edc9312fab83dd05a0d66169&code_challenge=od54YBaYnZSCZxVNQSsDavnvimAextaygiO5hsdrjUM&code_challenge_method=S256',
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: WebViewWidget(controller: _controller)),
    );
  }
}
