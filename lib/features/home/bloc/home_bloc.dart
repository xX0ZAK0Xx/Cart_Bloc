import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cart_app/features/home/ui/homePage.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HometWishListNavigateEvent>(hometWishListNavigateEvent);
    on<HomeCartNavigateEvent>(homeCartNavigateEvent);

    on<HomeProductWishListClickEvent>(homeProductWishListClickEvent);
    on<HomeProductCartClickEvent>(homeProductCartClickEvent);
  }

  FutureOr<void> hometWishListNavigateEvent(
      HometWishListNavigateEvent event, Emitter<HomeState> emit) {
    print("Clicked Wishlist Navigator");
  }

  FutureOr<void> homeCartNavigateEvent(
      HomeCartNavigateEvent event, Emitter<HomeState> emit) {
    print("Clicked Cart Navigator");
  }

  FutureOr<void> homeProductWishListClickEvent(
      HomeProductWishListClickEvent event, Emitter<HomeState> emit) {
    print("Clicked Product Wish List");
  }

  FutureOr<void> homeProductCartClickEvent(
      HomeProductCartClickEvent event, Emitter<HomeState> emit) {
    print("Clicked Product Cart");
  }
}
