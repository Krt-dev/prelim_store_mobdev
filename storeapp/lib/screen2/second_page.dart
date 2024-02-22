
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:storeapp/main.dart';
import 'package:storeapp/app_styles.dart';
import 'package:storeapp/providers/cart_provider.dart';
import '../Model/places_model.dart';
import 'carousel_images.dart';
import 'package:storeapp/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsDetailScreen extends StatelessWidget {
  final Places places;
  const NewsDetailScreen({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      backgroundColor: kLighterWhite,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 50,
                  child: Stack(
                    children: [
                      FullScreenSlider(
                        places: places,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(42),
                              topRight: Radius.circular(42),
                            ),
                            color: kLighterWhite,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kPaddingHorizontal,
                            vertical: 60,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyApp()));
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      kBorderRadius,
                                    ),
                                    border: Border.all(
                                      color: kWhite,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: SvgPicture.asset(
                                    'assets/images/arrow_back_icon.svg',
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    kBorderRadius,
                                  ),
                                  border: Border.all(
                                    color: kWhite,
                                  ),
                                ),
                                padding: const EdgeInsets.all(12),
                                child: SvgPicture.asset(
                                  'assets/images/bookmark_white_icon.svg',
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPaddingHorizontal,
                  ),
                  transform: Matrix4.translationValues(0, -14, 0),
                  child: Text(
                    places.text,
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 7,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: kPaddingHorizontal,
                    vertical: 16,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal! * 2.5,
                  ),
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                    border: Border.all(
                      color: kBorderColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 13,
                        backgroundColor: kBlue,
                        backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/media/F9YZMWLXQAA7lcA?format=jpg&name=large',
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                      Text(
                        'Kurt C. Sanchez     •    \$${places.price}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: kPoppinsRegular.copyWith(
                          color: kGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPaddingHorizontal,
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt convallis iaculis. Vivamus neque dolor, faucibus sed sollicitudin sit amet, laoreet eget turpis. Sed euismod ultricies sodales. Cras non ipsum id felis fringilla venenatis. Vestibulum velit mauris, suscipit vitae tortor in, aliquam bibendum ante. In nec mollis urna, vel malesuada lorem. Cras rutrum aliquam ex, quis commodo massa ultrices nec. Maecenas eget mollis dui, nec ultricies purus. Vivamus et sagittis sapien. Morbi ac mi nisi. Donec sollicitudin nunc consectetur elementum suscipit. Phasellus luctus tempus tortor, id suscipit enim. In eu libero mauris.',
                    style: kPoppinsMedium.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      color: kDarkBlue,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 5,
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 750,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(width: 16),
                  FloatingActionButton.extended(
                    backgroundColor: kLightBlue,
                    onPressed: () {
                      cartProvider.add(places);
                    },
                    label: Text('Buy Ticket: \$${places.price}',
                        style: const TextStyle(color: Colors.white)),
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FullScreenSlider extends StatefulWidget {
  final Places places;
  const FullScreenSlider({super.key, required this.places});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: widget.places.imageLinks
              .map(
                (item) => Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: SizeConfig.blockSizeVertical! * 50,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 52,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: SvgPicture.asset(
                          _current == entry.key
                              ? 'assets/carousel_indicator_enabled.svg'
                              : 'assets/carousel_indicator_disabled.svg',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
