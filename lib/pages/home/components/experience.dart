import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/models/company.dart';
import 'package:my_website/provider/theme.dart';
import 'package:my_website/utils/constants.dart';
import 'package:my_website/utils/custom_scroll.dart';
import 'package:my_website/utils/screen_helper.dart';

class ExperienceSection extends StatelessWidget {
  final List<CompanyModel> companies;
  const ExperienceSection({Key? key, required this.companies})
      : super(key: key);

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

  Widget _buildUi(double width, BuildContext context) {
    return ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
            scrollbars: false, dragDevices: CustomScrollBehavior().dragDevices),
        child: ScreenHelper.isMobile(context) ? Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: companies
                  .map((e) => Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      child: _buildProject(width, e)))
                  .toList(),
        ): SizedBox(
          height: width / 1.1,
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.height / 300,
            children: companies
                  .map((e) => Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      child: _buildProject(width, e)))
                  .toList(),
          ),
        ));
  }

  Widget _buildProject(double width, CompanyModel companyModel) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Consumer(builder: (context, ref, _) {
            return Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: ref.watch(themeProvider).isDarkMode
                      ? const Color.fromARGB(75, 12, 12, 7)
                      : Colors.grey[100],
                  borderRadius: BorderRadius.circular(5)),
              child: Flex(
                direction: ScreenHelper.isMobile(context)
                    ? Axis.vertical
                    : Axis.horizontal,
                children: [
                  SizedBox(
                    width: ScreenHelper.isMobile(context) ? 230: MediaQuery.of(context).size.width / 6,
                    child: Image.asset(
                      companyModel.appPhotos,
                      width: constraints.maxWidth > 720.0 ? null : 350.0,
                      fit: BoxFit.cover,
                      height: ScreenHelper.isMobile(context) ? 200: MediaQuery.of(context).size.width / 7,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        companyModel.title,
                        style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.w900,
                          height: 1.3,
                          fontSize: 28.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width:  ScreenHelper.isMobile(context) ? 600: MediaQuery.of(context).size.width / 4,
                        child: Text(
                          companyModel.description,
                          style: const TextStyle(
                            color: kCaptionColor,
                            height: 1.5,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      companyModel.techUsed.isEmpty
                          ? Container()
                          : Text(
                              "Tecnologias usadas",
                              style: GoogleFonts.josefinSans(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),
                      Wrap(
                        children: companyModel.techUsed
                            .map((e) => Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 25,
                                  height: 25,
                                  child: Image.asset(e.logo),
                                ))
                            .toList(),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                    ],
                  )
                ],
              ),
            );
          });
        },
      ),
    );
  }
}
