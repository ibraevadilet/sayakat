import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sayakat/core/images/app_images.dart';
import 'package:sayakat/features/tours/domain/tour_model.dart';
import 'package:sayakat/features/tours/presentation/tours_detail_screen/widgets/description_widget.dart';
import 'package:sayakat/widgets/images_widget.dart';
import 'package:sayakat/widgets/flick_video_player_widget.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/spaces.dart';
import 'package:sayakat/widgets/videos_list_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailBody extends StatefulWidget {
  const DetailBody({super.key, required this.model});
  final TourModel model;

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  int currantIndex = 0;

  late List<Widget> tabBarView = [
    DescriptionWidget(model: widget.model),
    ImagesWidget(images: [widget.model.image]),
    const VideosListWidget(
      players: [
        FlickVideoPlayerWidget(video: ''),
        FlickVideoPlayerWidget(video: ''),
        FlickVideoPlayerWidget(video: ''),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: DraggableScrollableSheet(
        maxChildSize: 0.8,
        minChildSize: 0.55,
        initialChildSize: 0.55,
        expand: false,
        builder: (BuildContext context, ScrollController scrollController) {
          return BottomSheet(
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            onClosing: () {},
            enableDrag: false,
            builder: (context) {
              return Container(
                height: context.height * 0.55,
                width: context.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 18),
                        Text(
                          widget.model.title,
                          style: AppTextStyles.s18W700(
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            const Icon(
                              Icons.place_sharp,
                              color: AppColors.orangeff5733,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.model.destination,
                              style: AppTextStyles.s16W400(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.distanceIcon,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '${widget.model.distance} km',
                              style: AppTextStyles.s16W400(
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '•',
                              style:
                                  AppTextStyles.s17W600(color: AppColors.black),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.attach_money_outlined,
                              color: AppColors.orangeff5733,
                            ),
                            Text(
                              '${widget.model.price} сом',
                              style: AppTextStyles.s16W400(
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '•',
                              style:
                                  AppTextStyles.s17W600(color: AppColors.black),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.date_range,
                              color: AppColors.orangeff5733,
                            ),
                            Text(
                              '12.12.2023',
                              style: AppTextStyles.s16W400(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Text('Уровень сложности: Легкий'),
                        const SizedBox(height: 12),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'FUN TRAVELLS',
                                style: AppTextStyles.s15W400(),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                'подробнее..',
                                style: AppTextStyles.s14W400(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        InkWell(
                          onTap: () async {
                            const nativeUrl =
                                "https://instagram.com/fun_travells?igshid=MzRlODBiNWFlZA==";
                            await launchUrl(Uri.parse(nativeUrl));
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.instaLogo,
                                height: 20,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                'fun_travells',
                                style: AppTextStyles.s15W400(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        TabBar(
                          onTap: (index) {
                            currantIndex = index;
                            setState(() {});
                          },
                          tabs: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: FittedBox(
                                child: Text(
                                  'Описание',
                                  style: AppTextStyles.s15W600(
                                      color: AppColors.black),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: FittedBox(
                                child: Text(
                                  'Фотографии',
                                  style: AppTextStyles.s15W600(
                                      color: AppColors.black),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: FittedBox(
                                child: Text(
                                  'Видео',
                                  style: AppTextStyles.s15W600(
                                      color: AppColors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        tabBarView[currantIndex],
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
