import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:apicall/View/features/post/models/post_dat_ui_model.dart';
import 'package:apicall/View/features/post/repos/post_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<PostInitialFetchEvent>(postInitialFetchEvent);
  }

  FutureOr<void> postInitialFetchEvent(
      PostInitialFetchEvent event, Emitter<PostState> emit) async {
    emit(PostFetchingErrorState());

    Future.delayed(Duration(seconds: 5));
    List<PostDataUiModel> posts = await PostRepo.fetchPost();
    emit(PostFetchingSuccessfulState(posts: posts));
  }
}
