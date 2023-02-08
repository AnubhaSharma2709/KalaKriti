import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kalakriti/registration/utilis/constants.dart';
import 'package:kalakriti/registration/utilis/utilis.dart';


class TechStack extends StatelessWidget {
  const TechStack({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize = utilis().getscreenSize();
    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: screenSize.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
                      ),
                    ),
                    onPressed:(){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding /2 , horizontal: defaultPadding /4),
                      child: Row(
                        children: [
                          Image.asset('lib/assets/icons/ar.png',
                          height: screenSize.height * 0.05),
                          Text('Try AR'),
                        ],
                      ),
                    ),
                ),
              SizedBox(height: 10,),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
                  ),
                ),
                onPressed:(){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: defaultPadding /2, horizontal: defaultPadding/4),
                  child: Row(
                    children: [
                      Image.asset('lib/assets/icons/online store.png',
                      height: screenSize.height * 0.05),
                      Text('Try 3D Store'),
                    ],
                  ),
                ),
              ),
              ],
          ),
        ),
    );
  }
}
