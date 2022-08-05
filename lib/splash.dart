
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String status = 'Loading items';

  bool loading = true;
  AuthController authController = Get.find<AuthController>();

  Future<bool> hasConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      authController.validateLogin();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Center(
                          child: Image.asset(
                        splashLogo,
                        width: 300,
                        height: 300,
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              child: LinearProgressIndicator(
                                minHeight: 5,
                                color: Colors.black54,
                                backgroundColor: Colors.white30,
                              ),
                            ), 
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            
          );
        
      
    
  }
}
