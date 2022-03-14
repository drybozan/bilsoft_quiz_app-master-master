// ignore_for_file: prefer_final_fields, unused_field

class AssetsPath {
  static AssetsPath _instance = AssetsPath._init();
  AssetsPath._init();
  factory AssetsPath() {
    return _instance;
  }
  
  
  //!SVG
  final String numbersSVG = 'assets/images/numbers.svg';
  final String turkceSVG = 'assets/images/turkce.svg';
  final String fenSVG = 'assets/images/fen.svg';
  final String ingSVG = 'assets/images/ing.svg';
  final String sosyalSVG = 'assets/images/sosyal.svg';
  final String mathSVG = 'assets/images/math.svg';
  final String questionLogoSVG = 'assets/images/questionLogo.svg';


  //!HOMEPAGE
  final String chatSVG = 'assets/icons/chat.svg';
  final String facebookSVG = 'assets/icons/facebook.svg';
  final String googlePlusSVG = 'assets/icons/google-plus.svg';
  final String loginSVG = 'assets/icons/login.svg';
  final String signUpSVG = 'assets/icons/signup.svg';
  final String twitterSVG = 'assets/icons/twitter.svg';


  //!BOTTOM_NAVIGATION_BAR
  final String loginBottomPNG = 'assets/images/login_bottom.png';
  final String mainBottomPNG = 'assets/images/main_bottom.png';
  final String mainTopPNG = 'assets/images/main_top.png';
  final String signUpBottomPNG = 'assets/images/signup_top.png';




  
  
  
}