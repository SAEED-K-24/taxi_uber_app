import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taxi_app/app/constsnt.dart';
import 'package:taxi_app/features/map/map.dart';
import 'package:taxi_app/widgets/widget.dart';

import '../../domain/model/trip.dart';

class MapPage extends ConsumerWidget {
  MapPage({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Trip trip = ref.watch(tripProvider);
    return Scaffold(
      key: _key,
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          alignment: Alignment.topLeft,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                OSMFlutter(
                  controller: ref.read(tripProvider.notifier).mapController,
                  osmOption: OSMOption(
                    zoomOption: const ZoomOption(
                      initZoom: 12,
                      minZoomLevel: 4,
                      maxZoomLevel: 14,
                      stepZoom: 1.0,
                    ),
                    roadConfiguration:
                        const RoadOption(roadColor: Colors.blueGrey),
                    userLocationMarker: UserLocationMaker(
                      personMarker: MarkerIcon(
                        icon: Icon(
                          Icons.personal_injury,
                          color: Colors.black,
                          size: 48.r,
                        ),
                      ),
                      directionArrowMarker: MarkerIcon(
                        icon: Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 48.r,
                        ),
                      ),
                    ),
                    userTrackingOption: const UserTrackingOption(
                      enableTracking: true,
                      unFollowUser: false,
                    ),
                    markerOption: MarkerOption(
                        defaultMarker: MarkerIcon(
                      icon: Icon(
                        Icons.person_pin_circle,
                        color: primaryColor,
                        size: 48.r,
                      ),
                    )),
                  ),
                  mapIsLoading:
                      const Center(child: CircularProgressIndicator()),
                ),
                trip.toLat != null
                    ? SendRequestWidget(
                        trip: trip,
                      )
                    : Positioned(
                        bottom: 20.h,
                        left: 10.w,
                        right: 10.w,
                        child: CustomButtonWidget(
                          title: 'To',
                          onTap: () {
                            context.goNamed('searchloc');
                          },
                        ),
                      ),
              ],
            ),
            Positioned(
              top: 20,
              left: 20,
              child: CustomIconWidget(
                  icon: Icons.format_list_bulleted,
                  onTap: () async {
                    _key.currentState!.openDrawer();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
