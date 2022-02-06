import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_g/app/constants/app_icons.dart';
import 'package:med_g/app/theme/theme.dart';
import 'package:med_g/screens/notifications/notifications_screen.dart';
import 'package:med_g/widgets/w_button.dart';
import 'package:med_g/widgets/w_scale_animation.dart';

class AccountSettingsAppBar extends StatelessWidget {
  const AccountSettingsAppBar({
    Key? key,
    required this.mediaQuery,
  }) : super(key: key);

  final MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQuery.padding.top + 264,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: AppTheme.primaryText,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: mediaQuery.padding.top,
              left: 14,
              right: 14,
            ),
            height: mediaQuery.padding.top + 77,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.black.withOpacity(0.1),
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: const Offset(1, 1),
                      ),
                    ],
                  ),
                  child: WButton(
                    padding: EdgeInsets.zero,
                    color: AppTheme.white,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    width: 31,
                    height: 31,
                    child: SvgPicture.asset(AppIcons.arrowBackIos),
                  ),
                ),
                WScaleAnimation(
                  onTap: (_) {
                    Navigator.of(context).push(
                      NotificationsScreen.route(),
                    );
                  },
                  child: Container(
                    width: 42,
                    height: 42,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: AppTheme.white.withOpacity(0.35),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.primaryText.withOpacity(0.35),
                          blurRadius: 35,
                          spreadRadius: 0,
                          offset: const Offset(0, 15),
                        )
                      ],
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: const BoxDecoration(
                        color: AppTheme.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        AppIcons.bellRed,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: mediaQuery.padding.top + 17,
            left: (mediaQuery.size.width / 2) - 75,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 165,
                  height: 165,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 5,
                      )
                    ],
                  ),
                  child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      color: AppTheme.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: AppTheme.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 23),
                WScaleAnimation(
                  onTap: (_) {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppTheme.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.camera),
                        const SizedBox(width: 9),
                        Text(
                          'Change Photo',
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
