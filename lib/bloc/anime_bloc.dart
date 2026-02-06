import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project_6/respoistories/Api/api_class.dart' show AnimeRepository;
import 'package:project_6/respoistories/models/animemodel.dart';

part 'anime_event.dart';
part 'anime_state.dart';

class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
  final  animeRepository=AnimeRepository();
  AnimeBloc() : super(AnimeInitial()) {
    on<FetchAnimeEvent>((event, emit) async {
       emit(AnimeblocLoading());
       try {
         final animeModel = await animeRepository.getAnime();
         emit(AnimeblocLoaded(animemodel: animeModel));
       } catch (e) {
         emit(AnimeblocError());
       }
    });
  }
}
