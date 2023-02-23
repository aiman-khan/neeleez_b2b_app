import 'package:get/get.dart';

import 'package:neeleez_b2b/app/modules/accept_scheduled_job/bindings/accept_scheduled_job_binding.dart';
import 'package:neeleez_b2b/app/modules/accept_scheduled_job/views/accept_scheduled_job_view.dart';
import 'package:neeleez_b2b/app/modules/add_quotation/bindings/add_quotation_binding.dart';
import 'package:neeleez_b2b/app/modules/add_quotation/views/add_quotation_view.dart';
import 'package:neeleez_b2b/app/modules/home/bindings/home_binding.dart';
import 'package:neeleez_b2b/app/modules/home/views/home_view.dart';
import 'package:neeleez_b2b/app/modules/job_details/bindings/job_details_binding.dart';
import 'package:neeleez_b2b/app/modules/job_details/views/job_details_view.dart';
import 'package:neeleez_b2b/app/modules/job_notification/bindings/job_notification_binding.dart';
import 'package:neeleez_b2b/app/modules/job_notification/views/job_notification_view.dart';
import 'package:neeleez_b2b/app/modules/jobs_history/bindings/jobs_history_binding.dart';
import 'package:neeleez_b2b/app/modules/jobs_history/views/jobs_history_view.dart';
import 'package:neeleez_b2b/app/modules/jobs_list/bindings/jobs_list_binding.dart';
import 'package:neeleez_b2b/app/modules/jobs_list/views/jobs_list_view.dart';
import 'package:neeleez_b2b/app/modules/parts_and_services/bindings/parts_and_services_binding.dart';
import 'package:neeleez_b2b/app/modules/parts_and_services/views/parts_and_services_view.dart';
import 'package:neeleez_b2b/app/modules/points/bindings/points_binding.dart';
import 'package:neeleez_b2b/app/modules/points/views/points_view.dart';
import 'package:neeleez_b2b/app/modules/quotation_list/bindings/quotation_list_binding.dart';
import 'package:neeleez_b2b/app/modules/quotation_list/views/quotation_list_view.dart';
import 'package:neeleez_b2b/app/modules/reports/bindings/reports_binding.dart';
import 'package:neeleez_b2b/app/modules/reports/views/reports_view.dart';
import 'package:neeleez_b2b/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:neeleez_b2b/app/modules/sign_in/views/sign_in_view.dart';
import 'package:neeleez_b2b/app/modules/tradeperson_list/bindings/tradeperson_list_binding.dart';
import 'package:neeleez_b2b/app/modules/tradeperson_list/views/tradeperson_list_view.dart';
import 'package:neeleez_b2b/app/modules/view_quotation/bindings/view_quotation_binding.dart';
import 'package:neeleez_b2b/app/modules/view_quotation/views/view_quotation_view.dart';
import 'package:neeleez_b2b/app/modules/wallet/bindings/wallet_binding.dart';
import 'package:neeleez_b2b/app/modules/wallet/views/wallet_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TRADEPERSON_LIST;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.PAGE3_JOB_NOTIFICATION,
      page: () => Page3JobNotificationView(),
      binding: Page3JobNotificationBinding(),
    ),
    GetPage(
      name: _Paths.PAGE4_JOBS_LIST,
      page: () => JobsListView(),
      binding: Page4JobsListBinding(),
    ),
    GetPage(
      name: _Paths.PAGE9_ACCEPT_SCHEDULED_JOB,
      page: () => Page9AcceptScheduledJobView(),
      binding: Page9AcceptScheduledJobBinding(),
    ),
    GetPage(
      name: _Paths.JOBS_HISTORY,
      page: () => JobsHistoryView(),
      binding: JobsHistoryBinding(),
    ),
    GetPage(
      name: _Paths.JOB_DETAILS,
      page: () => JobDetailsView(),
      binding: JobDetailsBinding(),
    ),
    GetPage(
      name: _Paths.REPORTS,
      page: () => ReportsView(),
      binding: ReportsBinding(),
    ),
    GetPage(
      name: _Paths.QUOTATION_LIST,
      page: () => QuotationListView(),
      binding: QuotationListBinding(),
    ),
    GetPage(
      name: _Paths.PARTS_AND_SERVICES,
      page: () => PartsAndServicesView(),
      binding: PartsAndServicesBinding(),
    ),
    GetPage(
      name: _Paths.ADD_QUOTATION,
      page: () => AddQuotationView(),
      binding: AddQuotationBinding(),
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => WalletView(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: _Paths.POINTS,
      page: () => PointsView(),
      binding: PointsBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_QUOTATION,
      page: () => ViewQuotationView(),
      binding: ViewQuotationBinding(),
    ),
    GetPage(
      name: _Paths.TRADEPERSON_LIST,
      page: () => TradepersonListView(),
      binding: TradepersonListBinding(),
    ),
  ];
}
