import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Selection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LanguageSelectionPage(),
    );
  }
}

class LanguageSelectionPage extends StatefulWidget {
  const LanguageSelectionPage({super.key});

  @override
  _LanguageSelectionPageState createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  String currentLanguage = 'en'; // Default language is English

  final Map<String, Map<String, String>> translations = {
    'en': {
      'welcome': 'Welcome!',
      'selectLanguage': 'Select Language',
      'english': 'English',
      'tamil': 'Tamil',
      'kannada': 'Kannada',
      'malayalam': 'Malayalam',
      'telugu': 'Telugu',
      'hindi': 'Hindi',
    },
    'ta': {
      'welcome': 'வரவேற்கிறேன்!',
      'selectLanguage': 'மொழி தேர்ந்தெடு',
      'english': 'ஆங்கிலம்',
      'tamil': 'தமிழ்',
      'kannada': 'கன்னடம்',
      'malayalam': 'மலையாளம்',
      'telugu': 'தெலுங்கு',
      'hindi': 'இந்தி',
    },
    'kn': {
      'welcome': 'ಸುಸ್ವಾಗತ!',
      'selectLanguage': 'ಭಾಷೆ ಆಯ್ಕೆಮಾಡಿ',
      'english': 'ಇಂಗ್ಲಿಷ್',
      'tamil': 'ತಮಿಳು',
      'kannada': 'ಕನ್ನಡ',
      'malayalam': 'ಮಲಯಾಳಂ',
      'telugu': 'ತೆಲುಗು',
      'hindi': 'ಹಿಂದಿ',
    },
    'ml': {
      'welcome': 'സ്വാഗതം!',
      'selectLanguage': 'ഭാഷ തിരഞ്ഞെടുക്കുക',
      'english': 'ഇംഗ്ലീഷ്',
      'tamil': 'തമിഴ്',
      'kannada': 'കന്നഡ',
      'malayalam': 'മലയാളം',
      'telugu': 'തെലുങ്ക്',
      'hindi': 'ഹിന്ദി',
    },
    'te': {
      'welcome': 'స్వాగతం!',
      'selectLanguage': 'భాష ఎంచుకోండి',
      'english': 'ఇంగ్లీష్',
      'tamil': 'తమిళ',
      'kannada': 'కన్నడ',
      'malayalam': 'మలయాళం',
      'telugu': 'తెలుగు',
      'hindi': 'హిందీ',
    },
    'hi': {
      'welcome': 'स्वागत है!',
      'selectLanguage': 'भाषा चुनें',
      'english': 'अंग्रेज़ी',
      'tamil': 'तमिल',
      'kannada': 'कन्नड़',
      'malayalam': 'मलयालम',
      'telugu': 'तेलुगु',
      'hindi': 'हिन्दी',
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translations[currentLanguage]!['selectLanguage']!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _changeLanguage('en'),
              child: Text(translations['en']!['english']!),
            ),
            ElevatedButton(
              onPressed: () => _changeLanguage('ta'),
              child: Text(translations['ta']!['tamil']!),
            ),
            ElevatedButton(
              onPressed: () => _changeLanguage('kn'),
              child: Text(translations['kn']!['kannada']!),
            ),
            ElevatedButton(
              onPressed: () => _changeLanguage('ml'),
              child: Text(translations['ml']!['malayalam']!),
            ),
            ElevatedButton(
              onPressed: () => _changeLanguage('te'),

              child: Text(translations['te']!['telugu']!),
            ),
            ElevatedButton(
              onPressed: () => _changeLanguage('hi'),
              child: Text(translations['hi']!['hindi']!),
            ),
            SizedBox(height: 20),
            Text(
              translations[currentLanguage]!['welcome']!,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  void _changeLanguage(String languageCode) {
    setState(() {
      currentLanguage = languageCode;
    });
  }
}