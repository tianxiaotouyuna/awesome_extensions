part of 'awesome_extensions.dart';

extension NavigatorExt on BuildContext {
  ///  just call this [canPop()] method and it would return true if this route can be popped and false if it’s not possible.
  bool canBack() => Navigator.canPop(this);

  /// performs a simple [Navigator.pop] action and returns given [result]
  void back() => Navigator.pop(this);

  /// performs a simple [Navigator.push] action with given [route]
  void to(Widget screen) {
    Navigator.of(this).push(MaterialPageRoute<Widget>(builder: (_) => screen));
  }

  /// performs a simple [Navigator.pushReplacement] action with given [route]
  void replaceWith(Widget screen) {
    Navigator.of(this).pushReplacement(MaterialPageRoute<Widget>(builder: (_) {
      return screen;
    }));
  }

  /// perform push and remove route
  void toAndRemoveUntil(Widget screen, {bool routes = false}) {
    Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => routes);
  }

  /// perform push with routeName
  void toNamed(String screenName) {
    Navigator.of(this).pushNamed(screenName);
  }

  /// perform replash with routeName
  void replaceWithNamed(String screenName) {
    Navigator.of(this).pushReplacementNamed(screenName);
  }

  /// perform replash with routeName
  void backUntilNamed(String screenName) {
    Navigator.of(this).popUntil(ModalRoute.withName(screenName));
  }

  /// perform push and remove route with name
  void toAndRemoveUntilName(String screenName, {bool routes = false}) {
    Navigator.of(this).popUntil(ModalRoute.withName(screenName));
    Navigator.pushNamedAndRemoveUntil(
        this, screenName, (Route<dynamic> route) => routes);
  }
}

extension ThemeExt on BuildContext {
  /// performs a simple [Theme.of(context)] action and returns given [result]
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// performs a simple [Theme.of(context).size] action and returns given [height or width]
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  /// performs a simple [Theme.of(context).primaryTextTheme] action and returns given [primaryTextTheme]
  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  /// performs a simple [Theme.of(context).accentTextTheme] action and returns given [accentTextTheme]
  TextTheme get accentTextTheme => Theme.of(this).accentTextTheme;

  /// performs a simple [Theme.of(context).bottomAppBarTheme] action and returns given [bottomAppBarTheme]
  BottomAppBarTheme get bottomAppBarTheme => Theme.of(this).bottomAppBarTheme;

  /// performs a simple [Theme.of(context).bottomSheetTheme] action and returns given [bottomSheetTheme]
  BottomSheetThemeData get bottomSheetTheme => Theme.of(this).bottomSheetTheme;

  /// performs a simple [Theme.of(context).backgroundColor] action and returns given [backgroundColor]
  Color get backgroundColor => Theme.of(this).backgroundColor;

  /// performs a simple [Theme.of(context).primaryColor] action and returns given [primaryColor]
  Color get primaryColor => Theme.of(this).primaryColor;

  /// performs a simple [Theme.of(context).buttonColor] action and returns given [buttonColor]
  Color get buttonColor => Theme.of(this).buttonColor;

  /// performs a simple [Theme.of(context).scaffoldBackgroundColor] action and returns given [scaffoldBackgroundColor]
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;

  /// performs a simple [Theme.of(context).appBarTheme] action and returns given [appBarTheme]
  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;

  /// performs a simple [textTheme.headline1] action and returns given [headline1]
  TextStyle? get headline1 => textTheme.headline1;

  /// performs a simple [textTheme.headline2] action and returns given [headline2]
  TextStyle? get headline2 => textTheme.headline2;

  /// performs a simple [textTheme.headline3] action and returns given [headline3]
  TextStyle? get headline3 => textTheme.headline3;

  /// performs a simple [textTheme.headline4] action and returns given [headline4]
  TextStyle? get headline4 => textTheme.headline4;

  /// performs a simple [textTheme.headline5] action and returns given [headline5]
  TextStyle? get headline5 => textTheme.headline5;

  /// performs a simple [textTheme.headline6] action and returns given [headline6]
  TextStyle? get headline6 => textTheme.headline6;

  /// performs a simple [textTheme.subtitle1] action and returns given [subtitle1]
  TextStyle? get subtitle1 => textTheme.subtitle1;

  /// performs a simple [textTheme.bodyText1] action and returns given [bodyText1]
  TextStyle? get bodyText1 => textTheme.bodyText1;

  /// performs a simple [textTheme.bodyText2] action and returns given [bodyText2]
  TextStyle? get bodyText2 => textTheme.bodyText2;

  /// performs a simple [textTheme.caption] action and returns given [caption]
  TextStyle? get caption => textTheme.caption;

  /// performs a simple [textTheme.button] action and returns given [button]
  TextStyle? get button => textTheme.button;

  /// performs a simple [textTheme.subtitle2] action and returns given [subtitle2]
  TextStyle? get subtitle2 => textTheme.subtitle2;

  /// performs a simple [textTheme.overline] action and returns given [overline]
  TextStyle? get overline => textTheme.overline;
}
