import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:grock/grock.dart';
import '../../../google_ads/google_ads.dart';
import '../../../riverpod/show_date_riverpod.dart';
import '../../Main Screen/main_scaffold.dart';

class DateResult extends ConsumerStatefulWidget {
  const DateResult({super.key});

  @override
  ConsumerState<DateResult> createState() => _DateResultState();
}

class _DateResultState extends ConsumerState<DateResult> {
  final GoogleAds _googleAds = GoogleAds();
  bool _bannerAdLoading = true;

  @override
  void initState() {
    super.initState();
    _loadBannerAd();
    _loadAndShowInterstitialAd();
  }

  void _loadBannerAd() {
    _googleAds.loadBannerAd();
    setState(() {
      _bannerAdLoading = false;
    });
  }

  void _loadAndShowInterstitialAd() {
    _googleAds.loadInterstitialAd(showAfterLoad: true);
  }

  @override
  void dispose() {
    _googleAds.bannerAd?.dispose();
    _googleAds.interstitialAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final showDateRiverpod = ref.read(showDateRiverpodProvider.notifier);
    final randomActivity = showDateRiverpod.getRandomActivity();

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
                "assets/image/date_result_background.png",
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          randomActivity.title,
                          style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Nanum',
                              wordSpacing: 20,
                              height: 1),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        randomActivity.description,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: 'Tech'
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () => Grock.to(const MainScaffold()),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blueAccent,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 7,
                        side: const BorderSide(
                          color: Colors.blueAccent,
                          width: 2,
                        ),
                      ),
                      child: const Text(
                        "Try Again",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    )
                  ],
                )),
                Center(
                  child: SizedBox(
                    height: _googleAds.bannerAd!.size.height.toDouble(),
                    width: _googleAds.bannerAd!.size.width.toDouble(),
                    child: AdWidget(ad: _googleAds.bannerAd!),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
