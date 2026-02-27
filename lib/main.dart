import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Pastikan untuk mengimport file CartModel Anda di sini
// import 'package:nama_project/cart_model.dart';

void main() {
  runApp(
    // Membungkus aplikasi dengan ChangeNotifierProvider
    // agar State bisa diakses di mana saja
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ), // ChangeNotifierProvider
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State Management Provider'),
        ),
        body: const Center(
          child: Text('Aplikasi Berhasil Dijalankan'),
        ),
      ),
    );
  }
}