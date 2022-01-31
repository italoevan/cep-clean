import 'package:flutter/material.dart';

extension Selectable on Text {
  SelectableText selectable() {
    return SelectableText(this.data ?? "");
  }
}

