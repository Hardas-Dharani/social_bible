import 'package:flutter/cupertino.dart';

enum TabType { home, bible, discover, add, inbox }

extension TabItem on TabType {
  BottomNavigationBarItem get bottomNavigationBarItem {
    return BottomNavigationBarItem(
      label: title,
      icon: icon,
    );
  }

  Icon get icon {
    switch (this) {
      case TabType.home:
        return const Icon(CupertinoIcons.home, size: 25);
      case TabType.bible:
        return const Icon(CupertinoIcons.book, size: 25);
      case TabType.discover:
        return const Icon(CupertinoIcons.search, size: 25);
      case TabType.add:
        return const Icon(CupertinoIcons.add_circled_solid, size: 25);
      case TabType.inbox:
        return const Icon(CupertinoIcons.envelope, size: 25);
    }
  }

  String get title {
    switch (this) {
      case TabType.home:
        return "Home";
      case TabType.bible:
        return "Bible";
      case TabType.discover:
        return "Discover";
      case TabType.add:
        return "Add";
      case TabType.inbox:
        return "Inbox";
    }
  }
}
