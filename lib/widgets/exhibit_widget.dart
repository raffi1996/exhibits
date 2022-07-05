import 'package:carousel_slider/carousel_slider.dart';
import 'package:exhibit/models/exhibit_model/exhibit_model.dart';
import 'package:flutter/material.dart';

import 'item_widget.dart';

class ExhibitWidget extends StatefulWidget {
  final ExhibitModel exhibit;

  const ExhibitWidget({
    Key? key,
    required this.exhibit,
  }) : super(key: key);

  @override
  State<ExhibitWidget> createState() => _ExhibitWidgetState();
}

class _ExhibitWidgetState extends State<ExhibitWidget> {

  int _current = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.exhibit.title,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: widget.exhibit.images.length,
          itemBuilder: (context, imageIndex, pageViewIndex) {
            return ItemWidget(
              image: widget.exhibit.images[imageIndex],
            );
          },
          options: CarouselOptions(
            height: 100,
            clipBehavior: Clip.none,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.exhibit.images.asMap().entries.map(
            (entry) {
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0,),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
