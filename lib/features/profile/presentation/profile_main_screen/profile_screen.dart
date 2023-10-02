import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/core/constants/app_text_constants.dart';
import 'package:sayakat/features/profile/domain/entity/user_entity.dart';
import 'package:sayakat/features/profile/presentation/profile_main_screen/widgets/profile_widget.dart';
import 'package:sayakat/routes/mobile_auto_router.gr.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                CachedNetworkImage(
                  imageUrl: AppTextConstants.avatar,
                  placeholder: (_, url) {
                    return Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey.withOpacity(0.4),
                        highlightColor: Colors.white,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    );
                  },
                  imageBuilder: (_, imageProvider) {
                    return Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            AppTextConstants.avatar,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 18),
                Text(
                  'Адилет Ибраев',
                  style: AppTextStyles.s18W700(),
                ),
                const SizedBox(height: 5),
                Text(
                  'ibraevadilet3@gmail.com',
                  style: AppTextStyles.s18W700(),
                ),
                const SizedBox(height: 18),
                ProfileWidget(
                  title: 'Редактировать профиль',
                  icon: Icons.person_2_outlined,
                  onTap: () {
                    context.router.push(
                      EditProfileRoute(
                        currantUserData: UserEntity(
                          name: 'Адилет Ибраев',
                          email: 'ibraevadilet3@gmail.com',
                          image: AppTextConstants.avatar,
                        ),
                      ),
                    );
                  },
                ),
                ProfileWidget(
                  title: 'Избранные',
                  icon: Icons.favorite,
                  onTap: () {},
                ),
                ProfileWidget(
                  title: 'Поделиться в Инстаграм',
                  icon: Icons.facebook,
                  onTap: () {},
                ),
                ProfileWidget(
                  title: 'Написать разработчику',
                  icon: Icons.chat,
                  onTap: () {
                    context.router.push(const ChatRoute());
                  },
                ),
                ProfileWidget(
                  title: 'Компании',
                  icon: Icons.factory,
                  onTap: () {
                    context.router.push(const CompaniesRoute());
                  },
                ),
                ProfileWidget(
                  title: 'Настройки программы',
                  icon: Icons.settings,
                  onTap: () {
                    context.router.push(const SettingsRoute());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
