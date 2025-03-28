import 'package:flutter/material.dart';
import 'package:kabootar/auth/auth_service.dart';
import 'package:kabootar/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logout() {
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
        
      ),
      drawer: MyDrawer(),
    );
  }
}
