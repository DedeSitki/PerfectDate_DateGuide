import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../components/appbar/account_appbar_with_back_icon.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  Future<void> _launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'perfectdateguide@gmail.com',
      query: Uri.encodeFull('subject=Perfect Date: Date Guide '),
    );

    final url = params.toString();
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AccountAppbarWithIcon(),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _TitleText(),
              SizedBox(height: 30),
              _ContactButton(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Contact Us",
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    );
  }
}

class _ContactButton extends StatelessWidget {
  const _ContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => _launchEmail(),
      icon: const Icon(Icons.email, size: 24),
      label: const Text(
        'Contact Us',
        style: TextStyle(fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  Future<void> _launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'perfectdateguide@hotmail.com',
      query: Uri.encodeFull('subject=Perfect Date: Date Guide '),
    );

    final url = params.toString();
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
