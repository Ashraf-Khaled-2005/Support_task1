import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/image.png'),
              SizedBox(
                height: 10,
              ),
              Text(
                'Safe Payment, Happy You!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[300],
                    fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Create a fresh virtual credit card for all your shoppings and banking needs',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .05,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size(60, 60),
                  backgroundColor: Colors.orange[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Welcome")));
                },
                child: Text(
                  "Pay",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffEAE6F5),
    );
  }
}
