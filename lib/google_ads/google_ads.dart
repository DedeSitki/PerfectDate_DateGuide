import 'package:google_mobile_ads/google_mobile_ads.dart';

class GoogleAds {
  InterstitialAd? _interstitialAd;
  BannerAd? _bannerAd;
  bool isNativeLoaded = false;
  NativeAd? _nativeAd;

  BannerAd? get bannerAd => _bannerAd;
  InterstitialAd? get interstitialAd => _interstitialAd;
  NativeAd? get nativeAd => _nativeAd;

  void loadInterstitialAd({bool showAfterLoad = false}) {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-5435445217624462/2672669561',
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          if (showAfterLoad) showInterstitialAd();
        },
        onAdFailedToLoad: (LoadAdError error) {
          _interstitialAd = null;
          Future.delayed(const Duration(seconds: 30), () {
            loadInterstitialAd(showAfterLoad: showAfterLoad);
          });
        },
      ),
    );
  }

  void showInterstitialAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.show();
      _interstitialAd = null;
    }
  }

  void loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-5435445217624462/1753543406',
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          _bannerAd = ad as BannerAd;
        },
        onAdFailedToLoad: (ad, err) {
          ad.dispose();
          _bannerAd = null;
          Future.delayed(const Duration(seconds: 30), loadBannerAd);
        },
      ),
    )..load();
  }

  void loadNativeAd({required Function onNativeAdLoaded, required Function onNativeAdFailed}) {
    _nativeAd = NativeAd(
      adUnitId: "ca-app-pub-5435445217624462/4354540021",
      nativeTemplateStyle: NativeTemplateStyle(templateType: TemplateType.medium),
      listener: NativeAdListener(
        onAdLoaded: (ad) {
          isNativeLoaded = true;
          onNativeAdLoaded();
        },
        onAdFailedToLoad: (ad, error) {
          onNativeAdFailed();
          _nativeAd?.dispose();
          _nativeAd = null;
          Future.delayed(const Duration(seconds: 30), () => loadNativeAd(onNativeAdLoaded: onNativeAdLoaded, onNativeAdFailed: onNativeAdFailed));
        },
      ),
      request: const AdManagerAdRequest(),
    );

    _nativeAd?.load();
  }



  void dispose() {
    _interstitialAd?.dispose();
    _bannerAd?.dispose();
    _nativeAd?.dispose();
  }
}
