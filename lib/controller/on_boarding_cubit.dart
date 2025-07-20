import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  PageController pageController = PageController();
  int currentindex = 0;
  changes(int index) {
    emit(loaded());
    currentindex = index;
    emit(Statnext());
  }

  void next(BuildContext context) {
    if (currentindex > onBoardingList.length - 1) {
      Navigator.of(context).pushReplacementNamed("login");
    } else {
      currentindex++;
      pageController.animateToPage(
        currentindex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
  }
}
