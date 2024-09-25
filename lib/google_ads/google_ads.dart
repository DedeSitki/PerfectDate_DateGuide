import 'package:google_mobile_ads/google_mobile_ads.dart';

class GoogleAds {
  InterstitialAd? _interstitialAd;
  BannerAd? _bannerAd;

  BannerAd? get bannerAd => _bannerAd;
  InterstitialAd? get interstitialAd => _interstitialAd;

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
          // Retry loading the ad after a delay
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

  // Loads a banner ad.
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

  void dispose() {
    _interstitialAd?.dispose();
    _bannerAd?.dispose();
  }
}
