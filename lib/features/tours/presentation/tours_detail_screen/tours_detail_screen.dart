import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/tours/domain/tour_model.dart';
import 'package:sayakat/features/tours/presentation/tours_detail_screen/widgets/detail_body.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/widgets/call_buttons.dart';
import 'package:sayakat/widgets/spaces.dart';

@RoutePage()
class TourDetailScreen extends StatelessWidget {
  const TourDetailScreen({super.key, required this.model});
  final TourModel model;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const CallButtons(),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: context.height,
            ),
            Positioned(
              top: 0,
              child: SizedBox(
                height: context.height / 2 - 10,
                child: CachedNetworkImage(
                  imageUrl: model.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              top: 70,
              left: 20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Row(
                  children: [
                    SizedBox(width: 4),
                    Expanded(
                      child: BackButton(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 70,
              right: 20,
              child: InkWell(
                onTap: () {
                  context.popRoute();
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite_border,
                    color: AppColors.colorF50C28,
                  ),
                ),
              ),
            ),
            DetailBody(model: model),
          ],
        ),
      ),
    );
  }
}
