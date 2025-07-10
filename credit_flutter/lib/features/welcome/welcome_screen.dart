import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xF0EEFDFB),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/background.png',
                      width: double.infinity,
                      height: constraints.maxHeight * 0.6,
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter,
                    ),
                    const SizedBox(height: 40),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Crédit Agricole',
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w700,
                                fontSize: 29,
                                color: Color(0xFF007376),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Il modo più semplice per avere\nle tue polizze sempre con te.',
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: Color(0xFF007A79),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: Color(0xFFD9D9D9),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: Color(0xFFD9D9D9),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: Color(0xFFD9D9D9),
                                ),
                              ],
                            ),
                            const SizedBox(height: 36),
                            ElevatedButton(
                              onPressed: () {
                                context.go('/register');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF007376),
                                minimumSize: const Size(double.infinity, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28),
                                ),
                              ),
                              child: const Text(
                                'Registrati',
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                context.go('/login');
                              },
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Sei già registrato? ',
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black87,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Esegui l’accesso',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline,
                                        color: Color(0xFF007376),
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
