import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/views/favorite/favorite.screen.dart';

import '../../constants/string.constants.dart';
import '../../cubit/bottom-nav/bottom_nav_cubit.dart';
import '../../utils/enums.dart';
import '../home/home.screen.dart';
import '../saved-news/saved_news.screen.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              splashFactory: NoSplash.splashFactory,
            ),
            child: _bottomNavigation(
              context,
              state.selectedIndex,
            ),
          ),
          body: _body(context, state.selectedIndex),
        );
      },
    );
  }
}

Widget _body(BuildContext context, int selectedItemIndex) {
  if (selectedItemIndex == BottomBarIndex.home.valueIndex) {
    return const HomeScreen();
  }

  if (selectedItemIndex == BottomBarIndex.favorites.valueIndex) {
    return const FavoriteScreen();
  }
  if (selectedItemIndex == BottomBarIndex.savedNews.valueIndex) {
    return const SavedNewsScreen();
  }

  return const HomeScreen();
}

Widget _bottomNavigation(BuildContext context, int selectedItemIndex) {
  return BottomNavigationBar(
    items: [
      _homeBottomBar(selectedItemIndex),
      _favoriteBottomBar(selectedItemIndex),
      _savedNewsBottomBar(selectedItemIndex),
    ],
    type: BottomNavigationBarType.fixed,
    currentIndex: selectedItemIndex,
    onTap: (value) {
      context.read<BottomNavCubit>().onBottomNavChange(
            index: value,
          );
    },
  );
}

BottomNavigationBarItem _homeBottomBar(int selectedItemIndex) {
  return const BottomNavigationBarItem(
    icon: Icon(Icons.article),
    label: StringConst.allNews,
  );
}

BottomNavigationBarItem _favoriteBottomBar(int selectedItemIndex) {
  return const BottomNavigationBarItem(
    icon: Icon(Icons.favorite),
    label: StringConst.favorites,
  );
}

BottomNavigationBarItem _savedNewsBottomBar(int selectedItemIndex) {
  return const BottomNavigationBarItem(
    icon: Icon(Icons.bookmark),
    label: StringConst.savedNews,
  );
}
