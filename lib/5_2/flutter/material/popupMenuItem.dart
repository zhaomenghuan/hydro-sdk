import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadPopupMenuItem(l.Table table) {
  table["popupMenuItem"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PopupMenuItem(
        value: args[0]["value"],
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
      )
    ];
  });
}
