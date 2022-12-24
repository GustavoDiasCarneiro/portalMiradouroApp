import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';

myNavyBar(context,
    {required int currentIndex, required void Function(int?) changePage}) {
  return BubbleBottomBar(
    opacity: .2,
    currentIndex: currentIndex,
    onTap: changePage,
    borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
    elevation: 5,
    hasNotch: true,
    hasInk: true,
    inkColor: Colors.black12,
    items: [
      BubbleBottomBarItem(
        backgroundColor: Theme.of(context).backgroundColor,
        icon: const Icon(
          Ionicons.newspaper_outline,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Ionicons.newspaper_outline,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'Notícias',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      BubbleBottomBarItem(
        backgroundColor: Theme.of(context).backgroundColor,
        icon: const Icon(
          Ionicons.sunny_outline,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Ionicons.sunny_outline,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'Clima',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      BubbleBottomBarItem(
        backgroundColor: Theme.of(context).backgroundColor,
        icon: const Icon(
          Ionicons.bus_outline,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Ionicons.bus_outline,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'Ônibus',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      BubbleBottomBarItem(
          backgroundColor: Theme.of(context).backgroundColor,
          icon: const Icon(
            Icons.settings_outlined,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.settings_outlined,
            color: Theme.of(context).primaryColor,
          ),
          title: const Text(
            'Configurar',
            style: TextStyle(color: Colors.blue),
          ))
    ],
  );
}
