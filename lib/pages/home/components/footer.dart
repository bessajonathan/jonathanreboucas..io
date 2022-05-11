import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/models/footer_item.dart';
import 'package:my_website/utils/constants.dart';
import 'package:my_website/utils/screen_helper.dart';
import 'package:my_website/utils/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';

final List<FooterItem> footerItems = [
  FooterItem(
      iconData: FontAwesomeIcons.linkedinIn,
      title: "Linkedin",
      onTap: () {
        Utilty.openUrl(AppConstants.linkedInUrl);
      }),
  FooterItem(
      iconData: FontAwesomeIcons.github,
      title: "Github",
      onTap: () {
        Utilty.openUrl(AppConstants.githubUrl);
      }),
  FooterItem(
      iconData: FontAwesomeIcons.whatsapp,
      title: "Whatsapp",
      onTap: () {
        Utilty.openUrl(AppConstants.whatsapp);
      }),
  FooterItem(
      iconData: Icons.email,
      title: "E-Mail",
      onTap: () {
        Utilty.openUrl(AppConstants.emailUrl);
      }),
];

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }
}

Widget _buildUi(double width, BuildContext context) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50.0),
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: footerItems
                        .map(
                          (footerItem) => MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: InkWell(
                              onTap: footerItem.onTap,
                              child: SizedBox(
                                width: ScreenHelper.isMobile(context)
                                    ? constraints.maxWidth / 2.0 - 30.0
                                    : constraints.maxWidth / 4.0 - 20.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          footerItem.iconData,
                                          color: kPrimaryColor,
                                          size: 28,
                                        ),
                                        const SizedBox(
                                          width: 15.0,
                                        ),
                                        Text(
                                          footerItem.title,
                                          style: GoogleFonts.josefinSans(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
        },
      ),
    ),
  );
}
