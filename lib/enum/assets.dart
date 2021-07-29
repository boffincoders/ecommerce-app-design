enum AssetName {
  SplashLogo,
  SplashLogo2,
  RamniLogo,
  RamniText,
  SplashLogo3,
  EyeOff,
  ArrowLeft,
  FlutterLogo,
  HumburgerIcon,
  HeartIcon,
  CrossIcon,
  SuccessIcon,
  DemoPic,
  ChairPic,
  CupPic,
}

extension AssetNameExtension on AssetName {
  String get name {
    switch (this) {
      case AssetName.SplashLogo:
        return "static/png/splash_logo.png";
      case AssetName.SplashLogo2:
        return 'static/png/splash2.png';
      case AssetName.RamniLogo:
        return "static/png/ramni_logo.png";
      case AssetName.RamniText:
        return 'static/png/ramni_text.png';
      case AssetName.SplashLogo3:
        return 'static/png/splash3.png';
      case AssetName.EyeOff:
        return 'static/png/eye-off.png';
      case AssetName.ArrowLeft:
        return 'static/png/arrow-left.png';
      case AssetName.FlutterLogo:
        return 'static/png/flutter_logo.png';
      case AssetName.HumburgerIcon:
        return 'static/png/humburger.png';
      case AssetName.HeartIcon:
        return 'static/png/heart_icon.png';
      case AssetName.CrossIcon:
        return 'static/png/cross.png';
      case AssetName.SuccessIcon:
        return 'static/png/success_msg.png';
      case AssetName.DemoPic:
        return 'static/png/demo_pic.png';
      case AssetName.ChairPic:
        return 'static/png/chair.png';
      case AssetName.CupPic:
        return 'static/png/cup.png';
    }
  }
}
