import 'package:flutter/material.dart';

class TTTT extends StatelessWidget {
  const TTTT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Home Page")),

      // الدائرة الوسطى
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          print("Middle button clicked");
        },
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color:Theme.of(context).primaryColor,
            shape: BoxShape.circle,  // الشكل دائري كامل
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                spreadRadius: 2,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Icon(Icons.add, color: Colors.white, size: 30),
        ),
      ),

      bottomNavigationBar: BottomAppBar(height: 80,
        shape: CircularNotchedRectangle(),
        notchMargin: 25, // تكبير الميول حول الدايرة
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
