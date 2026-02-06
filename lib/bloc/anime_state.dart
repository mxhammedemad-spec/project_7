part of 'anime_bloc.dart';

@immutable
sealed class AnimeState {}

 class AnimeInitial extends AnimeState {}
class AnimeblocLoading extends AnimeState {}
class AnimeblocLoaded extends AnimeState {
  final Animemodel animemodel;

  AnimeblocLoaded({required this.animemodel});
}
class AnimeblocError extends AnimeState {}
