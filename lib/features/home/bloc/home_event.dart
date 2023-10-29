part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeProductWishListClickEvent extends HomeEvent {}

class HomeProductCartClickEvent extends HomeEvent {}

class HometWishListNavigateEvent extends HomeEvent {}

class HomeCartNavigateEvent extends HomeEvent {}
