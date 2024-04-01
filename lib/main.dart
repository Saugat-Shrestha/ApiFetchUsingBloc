import 'package:apicall/View/Authentication/Login.dart';
import 'package:apicall/View/features/post/bloc/post_bloc.dart';
import 'package:apicall/View/features/post/home/Home_Page.dart';
import 'package:apicall/View/features/post/ui/Post_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const ApiCall());
}

class ApiCall extends StatelessWidget {
  const ApiCall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => PostBloc(),
        child: PostPage(),
      ),
    );
  }
}


// event-> bloc -> state