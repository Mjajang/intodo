import 'package:flutter_bloc/flutter_bloc.dart';

enum ViewHome { list, grid }

class ViewHomeCubit extends Cubit<ViewHome> {
  ViewHomeCubit() : super(ViewHome.list);

  void toogleView() {
    emit(state == ViewHome.grid ? ViewHome.list : ViewHome.grid);
  }
}
