import 'package:flutter/material.dart';

class Services {
  final List servicesList;
  Services({required this.servicesList});
  List<Widget> services = [];

  List<Widget> getList() {
    for (int service = 0; service < servicesList.length; service++) {
      services.add(GestureDetector(
        onTap: () {},
        child: OfferService(
          serviceImagePath: servicesList[service][0]['serviceImage'],
          serviceName: servicesList[service][0]['serviceName'],
          servicePrice: servicesList[service][0]['servicePrice'],
          colour: Colors.red,
        ),
      ));

      if (service < servicesList.length - 1) {
        services.add(Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey,
        ));
      }
    }
    return services;
  }
}

class OfferService extends StatelessWidget {
  final String serviceImagePath;
  final String serviceName;
  final String servicePrice;
  final Color colour;
  const OfferService(
      {super.key,
      required this.serviceImagePath,
      required this.serviceName,
      required this.servicePrice,
      required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colour,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 17.5),
        child: SizedBox(
          height: 72,
          child: Row(
            children: [
              Image.asset(serviceImagePath),
              SizedBox(width: 5),
              SizedBox(
                height: 72,
                width: 199,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      serviceName,
                      style: TextStyle(
                          fontFamily: 'Raleway-SemiBold',
                          fontSize: 16,
                          height: 1),
                    ),
                    Text(
                      servicePrice,
                      style: TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontFamily: 'Raleway-Medium',
                          fontSize: 16,
                          height: 1),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: null,
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
