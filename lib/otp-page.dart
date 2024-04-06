import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromARGB(255, 46, 42, 42),
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 200, 229, 230),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('OTP TextField',
          style: TextStyle(
                  color: Colors.white,
          )
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          margin: const EdgeInsets.only(top: 40),
          width: double.infinity,
          child: Column(
            children: [
              const Text(
                "Verification",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 40),
                child: const Text(
                  "Enter the code sent to your number",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: const Text(
                  "+01156711041",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: Color.fromARGB(255, 83, 190, 204)),
                  ),
                ),
                onCompleted: (pin) => debugPrint(pin),
              ),
           const SizedBox(height: 20), // Add space between PIN and button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the next page (replace with your navigation logic)
                    Navigator.pushNamed(context, '/nextPage'); // Assuming next page has route name '/nextPage'
                  },
                  child: const Text('Next',
                    style: TextStyle(
                    color: Colors.blue,
                    
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}