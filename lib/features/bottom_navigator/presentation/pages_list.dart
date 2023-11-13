import 'package:flutter/material.dart';
import 'package:sayakat/features/auto_mobiles/presentation/auto_mobiles_main_screen/auto_mobiles_screen.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/create_post_screen.dart';
import 'package:sayakat/features/places/presentation/plases_main_screen/places_screen.dart';
import 'package:sayakat/features/profile/presentation/profile_main_screen/profile_screen.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/tours_screen.dart';

List<Widget> pages = [
  const ToursScreen(),
  const PlacesScreen(),
  const CreeatePostScreen(),
  const AutoMobilesScreen(),
  const ProfileScreen(),
];
