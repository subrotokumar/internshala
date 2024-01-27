// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:internshala/features/internship/data/models/application_status_message.dart';
import 'package:internshala/features/internship/data/models/label.dart';
import 'package:internshala/features/internship/data/models/location.dart';
import 'package:internshala/features/internship/data/models/stipend.dart';
import 'package:internshala/features/internship/domain/entities/internship_metadata_entity.dart';

part 'gen/internship_metadata.freezed.dart';
part 'gen/internship_metadata.g.dart';

@freezed
class InternshipsMetaModel extends InternshipsMeta with _$InternshipsMetaModel {
  const factory InternshipsMetaModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "employment_type") required String employmentType,
    @JsonKey(name: "application_status_message")
    required ApplicationStatusMessageModel applicationStatusMessage,
    @JsonKey(name: "job_title") required dynamic jobTitle,
    @JsonKey(name: "work_from_home") required bool workFromHome,
    @JsonKey(name: "segment") required String segment,
    @JsonKey(name: "segment_label_value") required dynamic segmentLabelValue,
    @JsonKey(name: "internship_type_label_value")
    required dynamic internshipTypeLabelValue,
    @JsonKey(name: "job_segments") required List<String> jobSegments,
    @JsonKey(name: "company_name") required String companyName,
    @JsonKey(name: "company_url") required String companyUrl,
    @JsonKey(name: "is_premium") required bool isPremium,
    @JsonKey(name: "is_premium_internship") required bool isPremiumInternship,
    @JsonKey(name: "employer_name") required String employerName,
    @JsonKey(name: "company_logo") required String companyLogo,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "url") required String url,
    @JsonKey(name: "is_internchallenge") required int isInternchallenge,
    @JsonKey(name: "is_external") required bool isExternal,
    @JsonKey(name: "is_active") required bool isActive,
    @JsonKey(name: "expires_at") required DateTime expiresAt,
    @JsonKey(name: "closed_at") required String closedAt,
    @JsonKey(name: "profile_name") required String profileName,
    @JsonKey(name: "part_time") required bool partTime,
    @JsonKey(name: "start_date") required String startDate,
    @JsonKey(name: "duration") required String duration,
    @JsonKey(name: "stipend") required StipendModel stipend,
    @JsonKey(name: "salary") required dynamic salary,
    @JsonKey(name: "job_experience") required dynamic jobExperience,
    @JsonKey(name: "experience") required String experience,
    @JsonKey(name: "posted_on") required String postedOn,
    @JsonKey(name: "postedOnDateTime") required int postedOnDateTime,
    @JsonKey(name: "application_deadline") required String applicationDeadline,
    @JsonKey(name: "expiring_in") required String expiringIn,
    @JsonKey(name: "posted_by_label") required String postedByLabel,
    @JsonKey(name: "posted_by_label_type") required String postedByLabelType,
    @JsonKey(name: "location_names") required List<String> locationNames,
    @JsonKey(name: "locations") required List<LocationModel> locations,
    @JsonKey(name: "start_date_comparison_format")
    required DateTime startDateComparisonFormat,
    @JsonKey(name: "start_date1") required DateTime startDate1,
    @JsonKey(name: "start_date2") required DateTime startDate2,
    @JsonKey(name: "is_ppo") required bool isPpo,
    @JsonKey(name: "is_ppo_salary_disclosed")
    required bool isPpoSalaryDisclosed,
    @JsonKey(name: "ppo_salary") required dynamic ppoSalary,
    @JsonKey(name: "ppo_salary2") required dynamic ppoSalary2,
    @JsonKey(name: "ppo_label_value") required String ppoLabelValue,
    @JsonKey(name: "to_show_extra_label") required bool toShowExtraLabel,
    @JsonKey(name: "extra_label_value") required String extraLabelValue,
    @JsonKey(name: "is_extra_label_black") required bool isExtraLabelBlack,
    @JsonKey(name: "campaign_names") required List<dynamic> campaignNames,
    @JsonKey(name: "campaign_name") required String campaignName,
    @JsonKey(name: "to_show_in_search") required bool toShowInSearch,
    @JsonKey(name: "campaign_url") required String campaignUrl,
    @JsonKey(name: "campaign_start_date_time")
    required dynamic campaignStartDateTime,
    @JsonKey(name: "campaign_launch_date_time")
    required dynamic campaignLaunchDateTime,
    @JsonKey(name: "campaign_early_access_start_date_time")
    required dynamic campaignEarlyAccessStartDateTime,
    @JsonKey(name: "campaign_end_date_time")
    required dynamic campaignEndDateTime,
    @JsonKey(name: "labels") required List<LabelModel> labels,
    @JsonKey(name: "labels_app") required String labelsApp,
    @JsonKey(name: "labels_app_in_card") required List<String> labelsAppInCard,
    @JsonKey(name: "is_covid_wfh_selected") required bool isCovidWfhSelected,
    @JsonKey(name: "to_show_card_message") required bool toShowCardMessage,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "is_application_capping_enabled")
    required bool isApplicationCappingEnabled,
    @JsonKey(name: "application_capping_message")
    required String applicationCappingMessage,
    @JsonKey(name: "override_meta_details")
    required List<dynamic> overrideMetaDetails,
    @JsonKey(name: "eligible_for_easy_apply")
    required bool eligibleForEasyApply,
    @JsonKey(name: "eligible_for_b2b_apply_now")
    required bool eligibleForB2BApplyNow,
    @JsonKey(name: "to_show_b2b_label") required bool toShowB2BLabel,
    @JsonKey(name: "is_international_job") required bool isInternationalJob,
    @JsonKey(name: "to_show_cover_letter") required bool toShowCoverLetter,
    @JsonKey(name: "office_days") required String? officeDays,
  }) = _InternshipsMetaModel;

  factory InternshipsMetaModel.fromJson(Map<String, Object?> json) =>
      _$InternshipsMetaModelFromJson(json);
}
