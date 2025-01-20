import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list/screens/product_list.dart';
import 'blocs/product_cubit.dart';
import 'repositories/product_repository.dart';
import 'di.dart';
import 'package:provider/provider.dart';

void main() {
  configureDependencies();
  runApp(
    MultiProvider(
      providers: [
        Provider<ProductRepository>(create: (context) => getIt<ProductRepository>()), // Use getIt here
        BlocProvider<ProductCubit>(
          create: (context) => ProductCubit(context.read<ProductRepository>())..fetchProducts(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductListScreen(),
    );
  }
}
