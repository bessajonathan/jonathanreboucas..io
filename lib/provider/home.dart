import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/models/header_item.dart';
import 'package:my_website/utils/constants.dart';
import 'package:my_website/utils/utils.dart';

final homeProvider = ChangeNotifierProvider((ref) => HomeProvider());

class HomeProvider extends ChangeNotifier {
  final contactKey = GlobalKey();
  final experience = GlobalKey();
  final homeKey = GlobalKey();

  Future<void> scrollByKey(GlobalKey key) async {
    final context = key.currentContext;
    await _scroll(context);
  }

  Future _scroll(BuildContext? context) async {
    if (context != null) {
      await Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    }
  }

  scrollBasedOnHeader(NameOnTap nameOnTap) {
    if (nameOnTap.title == "Contato") {
      scrollByKey(contactKey);
    } else if (nameOnTap.title == "Início") {
      scrollByKey(homeKey);
    } else if (nameOnTap.title == "Experiências") {
      scrollByKey(experience);
    }
  }
}
