import 'package:cart_app/features/home/bloc/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      // listenWhen: (previous, current) {

      // },
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Bloc Practice"),
            actions: [
              IconButton(
                  onPressed: () {
                    homeBloc.add(HometWishListNavigateEvent());
                  },
                  icon: Icon(CupertinoIcons.heart)),
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeCartNavigateEvent());
                  },
                  icon: Icon(CupertinoIcons.cart)),
            ],
          ),
        );
      },
    );
  }
}
