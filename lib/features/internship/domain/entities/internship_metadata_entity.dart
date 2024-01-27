import 'package:internshala/features/internship/domain/entities/application_status_message_entry.dart';
import 'package:internshala/features/internship/domain/entities/label_entity.dart';
import 'package:internshala/features/internship/domain/entities/location_entity.dart';
import 'package:internshala/features/internship/domain/entities/stipend_entity.dart';

class InternshipsMeta {
  final int id;
  final String title;
  final String employmentType;
  final ApplicationStatusMessage applicationStatusMessage;
  final dynamic jobTitle;
  final bool workFromHome;
  final String segment;
  final dynamic segmentLabelValue;
  final dynamic internshipTypeLabelValue;
  final List<String> jobSegments;
  final String companyName;
  final String companyUrl;
  final bool isPremium;
  final bool isPremiumInternship;
  final String employerName;
  final String companyLogo;
  final String type;
  final String url;
  final int isInternchallenge;
  final bool isExternal;
  final bool isActive;
  final DateTime expiresAt;
  final String closedAt;
  final String profileName;
  final bool partTime;
  final String startDate;
  final String duration;
  final Stipend stipend;
  final dynamic salary;
  final dynamic jobExperience;
  final String experience;
  final String postedOn;
  final int postedOnDateTime;
  final String applicationDeadline;
  final String expiringIn;
  final String postedByLabel;
  final String postedByLabelType;
  final List<String> locationNames;
  final List<Location> locations;
  final DateTime startDateComparisonFormat;
  final DateTime startDate1;
  final DateTime startDate2;
  final bool isPpo;
  final bool isPpoSalaryDisclosed;
  final dynamic ppoSalary;
  final dynamic ppoSalary2;
  final String ppoLabelValue;
  final bool toShowExtraLabel;
  final String extraLabelValue;
  final bool isExtraLabelBlack;
  final List<dynamic> campaignNames;
  final String campaignName;
  final bool toShowInSearch;
  final String campaignUrl;
  final dynamic campaignStartDateTime;
  final dynamic campaignLaunchDateTime;
  final dynamic campaignEarlyAccessStartDateTime;
  final dynamic campaignEndDateTime;
  final List<Label> labels;
  final String labelsApp;
  final List<String> labelsAppInCard;
  final bool isCovidWfhSelected;
  final bool toShowCardMessage;
  final String message;
  final bool isApplicationCappingEnabled;
  final String applicationCappingMessage;
  final List<dynamic> overrideMetaDetails;
  final bool eligibleForEasyApply;
  final bool eligibleForB2BApplyNow;
  final bool toShowB2BLabel;
  final bool isInternationalJob;
  final bool toShowCoverLetter;
  final String? officeDays;

  InternshipsMeta({
    required this.id,
    required this.title,
    required this.employmentType,
    required this.applicationStatusMessage,
    required this.jobTitle,
    required this.workFromHome,
    required this.segment,
    required this.segmentLabelValue,
    required this.internshipTypeLabelValue,
    required this.jobSegments,
    required this.companyName,
    required this.companyUrl,
    required this.isPremium,
    required this.isPremiumInternship,
    required this.employerName,
    required this.companyLogo,
    required this.type,
    required this.url,
    required this.isInternchallenge,
    required this.isExternal,
    required this.isActive,
    required this.expiresAt,
    required this.closedAt,
    required this.profileName,
    required this.partTime,
    required this.startDate,
    required this.duration,
    required this.stipend,
    required this.salary,
    required this.jobExperience,
    required this.experience,
    required this.postedOn,
    required this.postedOnDateTime,
    required this.applicationDeadline,
    required this.expiringIn,
    required this.postedByLabel,
    required this.postedByLabelType,
    required this.locationNames,
    required this.locations,
    required this.startDateComparisonFormat,
    required this.startDate1,
    required this.startDate2,
    required this.isPpo,
    required this.isPpoSalaryDisclosed,
    required this.ppoSalary,
    required this.ppoSalary2,
    required this.ppoLabelValue,
    required this.toShowExtraLabel,
    required this.extraLabelValue,
    required this.isExtraLabelBlack,
    required this.campaignNames,
    required this.campaignName,
    required this.toShowInSearch,
    required this.campaignUrl,
    required this.campaignStartDateTime,
    required this.campaignLaunchDateTime,
    required this.campaignEarlyAccessStartDateTime,
    required this.campaignEndDateTime,
    required this.labels,
    required this.labelsApp,
    required this.labelsAppInCard,
    required this.isCovidWfhSelected,
    required this.toShowCardMessage,
    required this.message,
    required this.isApplicationCappingEnabled,
    required this.applicationCappingMessage,
    required this.overrideMetaDetails,
    required this.eligibleForEasyApply,
    required this.eligibleForB2BApplyNow,
    required this.toShowB2BLabel,
    required this.isInternationalJob,
    required this.toShowCoverLetter,
    required this.officeDays,
  });
}
