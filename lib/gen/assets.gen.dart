// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

abstract final class Assets {
  static const AssetGenImage a09d672d20a577dd0d3a402137b037d41ec924502 =
      AssetGenImage('assets/09d672d20a577dd0d3a402137b037d41ec924502.jpg');
  static const AssetGenImage a1eee3505289310e0cfc11dd67dced3869db67b05 =
      AssetGenImage('assets/1eee3505289310e0cfc11dd67dced3869db67b05.png');
  static const AssetGenImage a23621d645e22f152c69f98db664476e93832301b =
      AssetGenImage('assets/23621d645e22f152c69f98db664476e93832301b.png');
  static const AssetGenImage a644c09dcd4aa9465b70ec6bc8cd71dfcb3d92459 =
      AssetGenImage('assets/644c09dcd4aa9465b70ec6bc8cd71dfcb3d92459.jpg');
  static const AssetGenImage a66acd03d6630cba2914243a5de4e0eebf23d710e =
      AssetGenImage('assets/66acd03d6630cba2914243a5de4e0eebf23d710e.jpg');
  static const AssetGenImage a8cdade62b49226d698fe69b38c30a1796aebd4e9 =
      AssetGenImage('assets/8cdade62b49226d698fe69b38c30a1796aebd4e9.png');
  static const AssetGenImage frame31 = AssetGenImage('assets/Frame 3 (1).png');
  static const AssetGenImage frame32 = AssetGenImage('assets/Frame 3 (2).png');
  static const AssetGenImage frame33 = AssetGenImage('assets/Frame 3 (3).png');
  static const AssetGenImage frame34 = AssetGenImage('assets/Frame 3 (4).png');
  static const AssetGenImage frame35 = AssetGenImage('assets/Frame 3 (5).png');
  static const AssetGenImage frame36 = AssetGenImage('assets/Frame 3 (6).png');
  static const AssetGenImage frame37 = AssetGenImage('assets/Frame 3 (7).png');
  static const AssetGenImage frame3 = AssetGenImage('assets/Frame 3.png');
  static const AssetGenImage group1 = AssetGenImage('assets/Group (1).png');
  static const AssetGenImage islami1 = AssetGenImage('assets/Islami (1).png');
  static const String page1 = 'assets/Page-1.svg';
  static const String quraan = 'assets/Quraan.svg';
  static const AssetGenImage quranCard = AssetGenImage('assets/QuranCard.png');
  static const String vector4 = 'assets/Vector (4).svg';
  static const AssetGenImage ced4c002894f38a7e1cfe8a978c8df2cebb1868d =
      AssetGenImage('assets/ced4c002894f38a7e1cfe8a978c8df2cebb1868d.png');
  static const AssetGenImage ecd5c672da95c50ecce229b847bd9e53b4043b9b =
      AssetGenImage('assets/ecd5c672da95c50ecce229b847bd9e53b4043b9b.jpg');
  static const AssetGenImage edb72ddd4874057134b382d16cc672d438493ca0 =
      AssetGenImage('assets/edb72ddd4874057134b382d16cc672d438493ca0.jpg');
  static const AssetGenImage glow = AssetGenImage('assets/glow.png');
  static const String icRadio = 'assets/ic_radio.svg';
  static const String icSebha = 'assets/ic_sebha.svg';
  static const String icTime = 'assets/ic_time.svg';
  static const AssetGenImage imgHeader = AssetGenImage('assets/img_header.png');
  static const String imgSurNumberFrame = 'assets/img_sur_number_frame.svg';
  static const AssetGenImage mosqo = AssetGenImage('assets/mosqo.png');
  static const String quranSvgrepoCom1 = 'assets/quran-svgrepo-com 1.svg';
  static const AssetGenImage radio = AssetGenImage('assets/radio.png');
  static const AssetGenImage shape1 = AssetGenImage('assets/shape1.png');
  static const AssetGenImage shape2 = AssetGenImage('assets/shape2.png');
  static const AssetGenImage tajMahalAgraIndia1 = AssetGenImage(
    'assets/taj-mahal-agra-india 1.png',
  );
  static const AssetGenImage tajMahalAgraIndia2 = AssetGenImage(
    'assets/taj-mahal-agra-india 2.png',
  );

  /// List of all assets
  static List<dynamic> get values => [
    a09d672d20a577dd0d3a402137b037d41ec924502,
    a1eee3505289310e0cfc11dd67dced3869db67b05,
    a23621d645e22f152c69f98db664476e93832301b,
    a644c09dcd4aa9465b70ec6bc8cd71dfcb3d92459,
    a66acd03d6630cba2914243a5de4e0eebf23d710e,
    a8cdade62b49226d698fe69b38c30a1796aebd4e9,
    frame31,
    frame32,
    frame33,
    frame34,
    frame35,
    frame36,
    frame37,
    frame3,
    group1,
    islami1,
    page1,
    quraan,
    quranCard,
    vector4,
    ced4c002894f38a7e1cfe8a978c8df2cebb1868d,
    ecd5c672da95c50ecce229b847bd9e53b4043b9b,
    edb72ddd4874057134b382d16cc672d438493ca0,
    glow,
    icRadio,
    icSebha,
    icTime,
    imgHeader,
    imgSurNumberFrame,
    mosqo,
    quranSvgrepoCom1,
    radio,
    shape1,
    shape2,
    tajMahalAgraIndia1,
    tajMahalAgraIndia2,
  ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
