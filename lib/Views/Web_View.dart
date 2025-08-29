import 'package:flutter/material.dart';
import 'package:news_app/Widgets/refresh_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  const WebViewPage({super.key, required this.url});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController controller;
  int progress = 0;
  bool hasError = false;
  String errorMessage = '';
  @override
  void initState() {
    super.initState();
    controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setNavigationDelegate(
            NavigationDelegate(
              onProgress: (int pro) {
                setState(() {});
                // Update loading bar.
                progress = pro;
              },
              onPageStarted: (String url) {},
              onPageFinished: (String url) {},
              onHttpError: (HttpResponseError error) {},
              onWebResourceError: (WebResourceError error) {
                hasError = true;
                errorMessage = error.description;
              },
              onNavigationRequest: (
                NavigationRequest request,
              ) {
                if (request.url.startsWith(
                  'https://www.youtube.com/',
                )) {
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
            ),
          )
          ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        shadowColor: Colors.transparent,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                  color: Color(0xffffd700),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async {
              controller.reload(); // إعادة تحميل الصفحة
            },
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: WebViewWidget(
                  controller: controller,
                ),
              ),
            ),
          ),
          if (progress < 100)
            Container(
              color: Colors.white,
              child: SizedBox(
                height:
                    MediaQuery.sizeOf(context).height - 300,
                child: Center(
                  child: RefreshIndicatorCircl(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
