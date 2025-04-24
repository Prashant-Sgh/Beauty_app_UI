import 'package:flutter/material.dart';
import 'package:beauty_app_ui/components/offer_service.dart';
import 'package:beauty_app_ui/default_data/service_list.dart';

class ChooseService extends StatefulWidget {
  const ChooseService({super.key});

  static String id = 'chooseService';

  @override
  State<ChooseService> createState() => _ChooseServiceState();
}

var serviceSelected;

class _ChooseServiceState extends State<ChooseService> {
  @override
  Widget build(BuildContext context) {
    Color colour = Colors.purple;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'MeTime',
            style: TextStyle(fontFamily: 'Raleway-Bold', fontSize: 19),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 51),
            Image.asset('assets/images/AnimationScrollState.png'),
            SizedBox(height: 39),
            Text(
              textAlign: TextAlign.center,
              'Now, choose one \n that fit your needs:',
              style: TextStyle(fontFamily: 'Raleway-SemiBold', fontSize: 24),
            ),
            SizedBox(height: 20),
            Column(
              children: List.generate(offerService.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (serviceSelected == index) {
                        serviceSelected = null;
                      } else {
                        serviceSelected = index;
                      }
                    });
                  },
                  child: OfferService(
                      serviceImagePath: offerService[index][0]['serviceImage'],
                      serviceName: offerService[index][0]['serviceName'],
                      servicePrice: offerService[index][0]['servicePrice'],
                      colour: (serviceSelected == index)
                          ? Color(0xFFFDCCC5).withAlpha((255 * 0.25).toInt())
                          : Colors.white),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
