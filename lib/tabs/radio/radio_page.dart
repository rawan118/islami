import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/tabs/radio/radio_content.dart';
import 'package:islami_app/tabs/radio/reciter_content.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  bool isClicked = true;
  List<bool> isMutedList = List.generate(30, (index) => false);
  List<bool> isPlayedList = List.generate(30, (index) => false);

  bool isRadioSelected = true;
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: mediaQuery.height * 0.23),
            Container(
              width: double.infinity,
              height: mediaQuery.height * 0.045,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFF202020).withOpacity(0.5),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isClicked = true;
                          isRadioSelected = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 40),
                        backgroundColor: isClicked
                            ? AppTheme.primary
                            : AppTheme.transparent,
                        overlayColor: AppTheme.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Radio',
                        style: TextStyle(
                          color: isClicked
                              ? AppTheme.darkGray
                              : AppTheme.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isClicked = false;
                          isRadioSelected = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 40),
                        backgroundColor: isClicked
                            ? AppTheme.transparent
                            : AppTheme.primary,
                        overlayColor:AppTheme.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Reciters',
                        style: TextStyle(
                          color: isClicked
                              ? AppTheme.primary
                              : AppTheme.darkGray,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: isRadioSelected
                  ? const RadioContent()
                  : const ReciterContent(),
            ),
          ],
        ),
      ),
    );
  }
}
