class ScreenConfig {
  final SingleWidget widget;

  ScreenConfig(this.widget);
}

abstract class SingleWidget {
  final String widgetName;

  SingleWidget(this.widgetName);
}

class ColumnWidget extends SingleWidget {
  final List<SingleWidget> children;

  ColumnWidget(this.children) : super("column");
}

class RowWidget extends SingleWidget {
  final List<SingleWidget> children;

  RowWidget(this.children) : super("row");
}

class TextWidget extends SingleWidget {
  final String textValue;

  TextWidget(this.textValue) : super("text");
}

class CardWidget extends SingleWidget {
  final String title;
  final String subTitle;
  final int iconPath;
  final bool expandedVersion;
  final String onTap;
  final String btnDescription;
  CardWidget(this.title, this.subTitle, this.iconPath, this.expandedVersion, this.onTap, this.btnDescription) : super("card");
}

SingleWidget configParser(dynamic) {
  SingleWidget returnValue = TextWidget("");
  switch (dynamic["type"]) {
    case "text":
      return TextWidget(dynamic["textValue"]);
    case "row":
      return RowWidget(
          (dynamic["children"] as List).map((e) => configParser(e)).toList());
    case "column":
      return ColumnWidget(
          (dynamic["children"] as List).map((e) => configParser(e)).toList());
    case "card":
      if(dynamic["expandedVersion"]) {
        return CardWidget(dynamic["title"], dynamic["subTitle"], dynamic["iconPath"],
            dynamic["expandedVersion"], dynamic["onTap"], dynamic["btnDescription"]);
      }
      return CardWidget(dynamic["title"], dynamic["subTitle"], dynamic["iconPath"],
          dynamic["expandedVersion"], dynamic["onTap"], " ");
  }
  return returnValue;
}