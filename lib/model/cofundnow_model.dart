// To parse this JSON data, do

//     final fundnowResponseModel = fundnowResponseModelFromJson(jsonString);
//
//
// FundnowResponseModel fundnowResponseModelFromJson(String str) => FundnowResponseModel.fromJson(json.decode(str));
//
// String fundnowResponseModelToJson(FundnowResponseModel data) => json.encode(data.toJson());

class FundnowResponseModel {
  FundnowResponseModel({
    this.notesDetails,
    this.valid,
  });

  List<NotesDetail> notesDetails;
  int valid;

  factory FundnowResponseModel.fromJson(Map<String, dynamic> json) => FundnowResponseModel(
    notesDetails: List<NotesDetail>.from(json["NotesDetails"].map((x) => NotesDetail.fromJson(x))),
    valid: json["Valid"],
  );

  Map<String, dynamic> toJson() => {
    "NotesDetails": List<dynamic>.from(notesDetails.map((x) => x.toJson())),
    "Valid": valid,
  };
}

class NotesDetail {
  NotesDetail({
    this.promotionalDays,
    this.ipfNoteStatusDescription,
    this.approvedBy,
    this.platformFee,
    this.payerMobile,
    this.extraInfo,
    this.payerMessage,
    this.maturityDate,
    this.creditRiskRating,
    this.financingAmount,
    this.releasedDate,
    this.declinedReason,
    this.otherCharge,
    this.applicant,
    this.promotionalEndDate,
    this.interestAmount,
    this.funder,
    this.agentId,
    this.requestEarlyPaymentDate,
    this.financingType,
    this.ipfNoteStatus,
    this.approvedByPayer,
    this.fundraisingDays,
    this.payerPosition,
    this.fundraisingStartDate,
    this.applicantBusinessName,
    this.supportingDocDetails,
    this.fundraisingEndDate,
    this.agentName,
    this.paymentReleasePercentage1,
    this.applicantEmail,
    this.completedDate,
    this.payerSignatoryIp,
    this.payerDepartment,
    this.id,
    this.applicantUserId,
    this.financingPaidDate,
    this.factoringAgreementSentDate,
    this.applyDate,
    this.insurancePolicyExtraInfo,
    this.payerEmail,
    this.paidAt,
    this.insurancePolicyReferenceNumber,
    this.interestType,
    this.expectedNoteIssueDate,
    this.insurancePolicyInceptionDate,
    this.insurancePolicyCompany,
    this.paymentReleasePercentage2,
    this.tenure,
    this.insurancePolicyCancellable,
    this.scheduleRepaymentInvestor,
    this.insurancePolicyExpiryDate,
    this.noteType,
    this.payerUserId,
    this.finalOtherCharge,
    this.payerSignatory,
    this.payerBusinessName,
    this.payerIssuerCompanyType,
    this.payer,
    this.approvedDate,
    this.noteReferenceId,
    this.issuerAcceptByDate,
    this.contractNumber,
    this.scheduleRepaymentIssuer,
    this.terms,
    this.payerDoingBusinessSince,
    this.otherChargesExtraInfo,
    this.payerSignatoryDate,
    this.approvedDatePayer,
    this.proposalLinkToIssuer,
    this.insurancePolicyPremium,
    this.premiumAmount,
    this.insurancePolicyType,
    this.fromSupplierId,
    this.factoringAgreementSupplierDate,
    this.interest,
    this.signUpLinkToIssuer,
    this.factoringAgreementAdminDate,
    this.isReleased,
    this.isCompleted,
    this.ipfProposalOfferType,
    this.financingPeriod,
    this.payerInfo,
    this.factSheet,
    this.invoiceNumber,
    this.factoringAgreementReceivedDate,
    this.financingPaidAmount,
    this.sstStampDuties,
    this.financingStartDate,
    this.factoringAgreementBuyerDate,
    this.isPaid,
  });

  int promotionalDays;
  String ipfNoteStatusDescription;
  int approvedBy;
  int platformFee;
  String payerMobile;
  ExtraInfo extraInfo;
  String payerMessage;
  DateTime maturityDate;
  int creditRiskRating;
  int financingAmount;
  String releasedDate;
  String declinedReason;
  int otherCharge;
  String applicant;
  DateTime promotionalEndDate;
  int interestAmount;
  List<Funder> funder;
  int agentId;
  String requestEarlyPaymentDate;
  int financingType;
  int ipfNoteStatus;
  String approvedByPayer;
  int fundraisingDays;
  String payerPosition;
  DateTime fundraisingStartDate;
  String applicantBusinessName;
  List<SupportingDocDetail> supportingDocDetails;
  DateTime fundraisingEndDate;
  String agentName;
  int paymentReleasePercentage1;
  String applicantEmail;
  String completedDate;
  String payerSignatoryIp;
  String payerDepartment;
  int id;
  int applicantUserId;
  String financingPaidDate;
  String factoringAgreementSentDate;
  DateTime applyDate;
  String insurancePolicyExtraInfo;
  String payerEmail;
  String paidAt;
  String insurancePolicyReferenceNumber;
  int interestType;
  DateTime expectedNoteIssueDate;
  DateTime insurancePolicyInceptionDate;
  String insurancePolicyCompany;
  int paymentReleasePercentage2;
  int tenure;
  int insurancePolicyCancellable;
  List<ScheduleRepaymentInvestor> scheduleRepaymentInvestor;
  DateTime insurancePolicyExpiryDate;
  int noteType;
  int payerUserId;
  String finalOtherCharge;
  int payerSignatory;
  String payerBusinessName;
  String payerIssuerCompanyType;
  String payer;
  DateTime approvedDate;
  String noteReferenceId;
  DateTime issuerAcceptByDate;
  String contractNumber;
  List<ScheduleRepaymentIssuer> scheduleRepaymentIssuer;
  int terms;
  String payerDoingBusinessSince;
  String otherChargesExtraInfo;
  String payerSignatoryDate;
  String approvedDatePayer;
  String proposalLinkToIssuer;
  int insurancePolicyPremium;
  int premiumAmount;
  String insurancePolicyType;
  int fromSupplierId;
  String factoringAgreementSupplierDate;
  int interest;
  String signUpLinkToIssuer;
  String factoringAgreementAdminDate;
  int isReleased;
  int isCompleted;
  int ipfProposalOfferType;
  int financingPeriod;
  String payerInfo;
  String factSheet;
  String invoiceNumber;
  String factoringAgreementReceivedDate;
  int financingPaidAmount;
  String sstStampDuties;
  String financingStartDate;
  String factoringAgreementBuyerDate;
  int isPaid;

  factory NotesDetail.fromJson(Map<String, dynamic> json) => NotesDetail(
    promotionalDays: json["Promotional_Days"],
    ipfNoteStatusDescription: json["IPF_Note_Status_Description"],
    approvedBy: json["ApprovedBy"],
    platformFee: json["PlatformFee"],
    payerMobile: json["PayerMobile"],
    extraInfo: ExtraInfo.fromJson(json["ExtraInfo"]),
    payerMessage: json["PayerMessage"],
    maturityDate: DateTime.parse(json["Maturity_Date"]),
    creditRiskRating: json["Credit_Risk_Rating"],
    financingAmount: json["FinancingAmount"],
    releasedDate: json["ReleasedDate"],
    declinedReason: json["DeclinedReason"],
    otherCharge: json["OtherCharge"],
    applicant: json["Applicant"],
    promotionalEndDate: DateTime.parse(json["Promotional_End_Date"]),
    interestAmount: json["InterestAmount"],
    funder: List<Funder>.from(json["Funder"].map((x) => Funder.fromJson(x))),
    agentId: json["Agent_ID"],
    requestEarlyPaymentDate: json["RequestEarlyPaymentDate"],
    financingType: json["FinancingType"],
    ipfNoteStatus: json["IPF_Note_Status"],
    approvedByPayer: json["ApprovedByPayer"],
    fundraisingDays: json["Fundraising_Days"],
    payerPosition: json["PayerPosition"],
    fundraisingStartDate: DateTime.parse(json["Fundraising_Start_Date"]),
    applicantBusinessName: json["ApplicantBusinessName"],
    supportingDocDetails: List<SupportingDocDetail>.from(json["SupportingDocDetails"].map((x) => SupportingDocDetail.fromJson(x))),
    fundraisingEndDate: DateTime.parse(json["Fundraising_End_Date"]),
    agentName: json["Agent_Name"],
    paymentReleasePercentage1: json["PaymentReleasePercentage1"],
    applicantEmail: json["ApplicantEmail"],
    completedDate: json["CompletedDate"],
    payerSignatoryIp: json["PayerSignatoryIP"],
    payerDepartment: json["PayerDepartment"],
    id: json["ID"],
    applicantUserId: json["ApplicantUserID"],
    financingPaidDate: json["FinancingPaidDate"],
    factoringAgreementSentDate: json["FactoringAgreementSentDate"],
    applyDate: DateTime.parse(json["ApplyDate"]),
    insurancePolicyExtraInfo: json["Insurance_Policy_Extra_Info"],
    payerEmail: json["PayerEmail"],
    paidAt: json["PaidAt"],
    insurancePolicyReferenceNumber: json["Insurance_Policy_Reference_Number"],
    interestType: json["InterestType"],
    expectedNoteIssueDate: DateTime.parse(json["Expected_Note_Issue_Date"]),
    insurancePolicyInceptionDate: DateTime.parse(json["Insurance_Policy_Inception_Date"]),
    insurancePolicyCompany: json["Insurance_Policy_Company"],
    paymentReleasePercentage2: json["PaymentReleasePercentage2"],
    tenure: json["Tenure"],
    insurancePolicyCancellable: json["Insurance_Policy_Cancellable"],
    scheduleRepaymentInvestor: List<ScheduleRepaymentInvestor>.from(json["ScheduleRepaymentInvestor"].map((x) => ScheduleRepaymentInvestor.fromJson(x))),
    insurancePolicyExpiryDate: DateTime.parse(json["Insurance_Policy_Expiry_Date"]),
    noteType: json["Note_Type"],
    payerUserId: json["PayerUserID"],
    finalOtherCharge: json["FinalOtherCharge"],
    payerSignatory: json["PayerSignatory"],
    payerBusinessName: json["PayerBusinessName"],
    payerIssuerCompanyType: json["PayerIssuerCompanyType"],
    payer: json["Payer"],
    approvedDate: DateTime.parse(json["ApprovedDate"]),
    noteReferenceId: json["Note_Reference_ID"],
    issuerAcceptByDate: DateTime.parse(json["Issuer_AcceptBy_Date"]),
    contractNumber: json["ContractNumber"],
    scheduleRepaymentIssuer: List<ScheduleRepaymentIssuer>.from(json["ScheduleRepaymentIssuer"].map((x) => ScheduleRepaymentIssuer.fromJson(x))),
    terms: json["Terms"],
    payerDoingBusinessSince: json["PayerDoingBusinessSince"],
    otherChargesExtraInfo: json["OtherChargesExtraInfo"],
    payerSignatoryDate: json["PayerSignatoryDate"],
    approvedDatePayer: json["ApprovedDatePayer"],
    proposalLinkToIssuer: json["ProposalLinkToIssuer"],
    insurancePolicyPremium: json["Insurance_Policy_Premium"],
    premiumAmount: json["Premium_Amount"],
    insurancePolicyType: json["Insurance_Policy_Type"],
    fromSupplierId: json["FromSupplierID"],
    factoringAgreementSupplierDate: json["FactoringAgreementSupplierDate"],
    interest: json["Interest"],
    signUpLinkToIssuer: json["SignUpLinkToIssuer"],
    factoringAgreementAdminDate: json["FactoringAgreementAdminDate"],
    isReleased: json["IsReleased"],
    isCompleted: json["IsCompleted"],
    ipfProposalOfferType: json["IPF_Proposal_Offer_Type"],
    financingPeriod: json["FinancingPeriod"],
    payerInfo: json["PayerInfo"],
    factSheet: json["FactSheet"],
    invoiceNumber: json["InvoiceNumber"],
    factoringAgreementReceivedDate: json["FactoringAgreementReceivedDate"],
    financingPaidAmount: json["FinancingPaidAmount"],
    sstStampDuties: json["SST_Stamp_Duties"],
    financingStartDate: json["FinancingStartDate"],
    factoringAgreementBuyerDate: json["FactoringAgreementBuyerDate"],
    isPaid: json["IsPaid"],
  );

  Map<String, dynamic> toJson() => {
    "Promotional_Days": promotionalDays,
    "IPF_Note_Status_Description": ipfNoteStatusDescription,
    "ApprovedBy": approvedBy,
    "PlatformFee": platformFee,
    "PayerMobile": payerMobile,
    "ExtraInfo": extraInfo.toJson(),
    "PayerMessage": payerMessage,
    "Maturity_Date": "${maturityDate.year.toString().padLeft(4, '0')}-${maturityDate.month.toString().padLeft(2, '0')}-${maturityDate.day.toString().padLeft(2, '0')}",
    "Credit_Risk_Rating": creditRiskRating,
    "FinancingAmount": financingAmount,
    "ReleasedDate": releasedDate,
    "DeclinedReason": declinedReason,
    "OtherCharge": otherCharge,
    "Applicant": applicant,
    "Promotional_End_Date": promotionalEndDate.toIso8601String(),
    "InterestAmount": interestAmount,
    "Funder": List<dynamic>.from(funder.map((x) => x.toJson())),
    "Agent_ID": agentId,
    "RequestEarlyPaymentDate": requestEarlyPaymentDate,
    "FinancingType": financingType,
    "IPF_Note_Status": ipfNoteStatus,
    "ApprovedByPayer": approvedByPayer,
    "Fundraising_Days": fundraisingDays,
    "PayerPosition": payerPosition,
    "Fundraising_Start_Date": fundraisingStartDate.toIso8601String(),
    "ApplicantBusinessName": applicantBusinessName,
    "SupportingDocDetails": List<dynamic>.from(supportingDocDetails.map((x) => x.toJson())),
    "Fundraising_End_Date": fundraisingEndDate.toIso8601String(),
    "Agent_Name": agentName,
    "PaymentReleasePercentage1": paymentReleasePercentage1,
    "ApplicantEmail": applicantEmail,
    "CompletedDate": completedDate,
    "PayerSignatoryIP": payerSignatoryIp,
    "PayerDepartment": payerDepartment,
    "ID": id,
    "ApplicantUserID": applicantUserId,
    "FinancingPaidDate": financingPaidDate,
    "FactoringAgreementSentDate": factoringAgreementSentDate,
    "ApplyDate": applyDate.toIso8601String(),
    "Insurance_Policy_Extra_Info": insurancePolicyExtraInfo,
    "PayerEmail": payerEmail,
    "PaidAt": paidAt,
    "Insurance_Policy_Reference_Number": insurancePolicyReferenceNumber,
    "InterestType": interestType,
    "Expected_Note_Issue_Date": "${expectedNoteIssueDate.year.toString().padLeft(4, '0')}-${expectedNoteIssueDate.month.toString().padLeft(2, '0')}-${expectedNoteIssueDate.day.toString().padLeft(2, '0')}",
    "Insurance_Policy_Inception_Date": insurancePolicyInceptionDate.toIso8601String(),
    "Insurance_Policy_Company": insurancePolicyCompany,
    "PaymentReleasePercentage2": paymentReleasePercentage2,
    "Tenure": tenure,
    "Insurance_Policy_Cancellable": insurancePolicyCancellable,
    "ScheduleRepaymentInvestor": List<dynamic>.from(scheduleRepaymentInvestor.map((x) => x.toJson())),
    "Insurance_Policy_Expiry_Date": insurancePolicyExpiryDate.toIso8601String(),
    "Note_Type": noteType,
    "PayerUserID": payerUserId,
    "FinalOtherCharge": finalOtherCharge,
    "PayerSignatory": payerSignatory,
    "PayerBusinessName": payerBusinessName,
    "PayerIssuerCompanyType": payerIssuerCompanyType,
    "Payer": payer,
    "ApprovedDate": approvedDate.toIso8601String(),
    "Note_Reference_ID": noteReferenceId,
    "Issuer_AcceptBy_Date": issuerAcceptByDate.toIso8601String(),
    "ContractNumber": contractNumber,
    "ScheduleRepaymentIssuer": List<dynamic>.from(scheduleRepaymentIssuer.map((x) => x.toJson())),
    "Terms": terms,
    "PayerDoingBusinessSince": payerDoingBusinessSince,
    "OtherChargesExtraInfo": otherChargesExtraInfo,
    "PayerSignatoryDate": payerSignatoryDate,
    "ApprovedDatePayer": approvedDatePayer,
    "ProposalLinkToIssuer": proposalLinkToIssuer,
    "Insurance_Policy_Premium": insurancePolicyPremium,
    "Premium_Amount": premiumAmount,
    "Insurance_Policy_Type": insurancePolicyType,
    "FromSupplierID": fromSupplierId,
    "FactoringAgreementSupplierDate": factoringAgreementSupplierDate,
    "Interest": interest,
    "SignUpLinkToIssuer": signUpLinkToIssuer,
    "FactoringAgreementAdminDate": factoringAgreementAdminDate,
    "IsReleased": isReleased,
    "IsCompleted": isCompleted,
    "IPF_Proposal_Offer_Type": ipfProposalOfferType,
    "FinancingPeriod": financingPeriod,
    "PayerInfo": payerInfo,
    "FactSheet": factSheet,
    "InvoiceNumber": invoiceNumber,
    "FactoringAgreementReceivedDate": factoringAgreementReceivedDate,
    "FinancingPaidAmount": financingPaidAmount,
    "SST_Stamp_Duties": sstStampDuties,
    "FinancingStartDate": financingStartDate,
    "FactoringAgreementBuyerDate": factoringAgreementBuyerDate,
    "IsPaid": isPaid,
  };
}

class ExtraInfo {
  ExtraInfo({
    this.creditNoteAmount,
    this.dueDate,
    this.relatedClaim,
    this.issueDate,
    this.relatedStatement,
    this.dateOfCreation,
    this.currency,
    this.amount,
    this.calledToVerified,
    this.invoiceChecked,
    this.trustValue,
  });

  String creditNoteAmount;
  DateTime dueDate;
  String relatedClaim;
  DateTime issueDate;
  String relatedStatement;
  DateTime dateOfCreation;
  String currency;
  String amount;
  int calledToVerified;
  String invoiceChecked;
  int trustValue;

  factory ExtraInfo.fromJson(Map<String, dynamic> json) => ExtraInfo(
    creditNoteAmount: json["CreditNoteAmount"],
    dueDate: DateTime.parse(json["DueDate"]),
    relatedClaim: json["RelatedClaim"],
    issueDate: DateTime.parse(json["IssueDate"]),
    relatedStatement: json["RelatedStatement"],
    dateOfCreation: DateTime.parse(json["DateOfCreation"]),
    currency: json["Currency"],
    amount: json["Amount"],
    calledToVerified: json["CalledToVerified"],
    invoiceChecked: json["InvoiceChecked"],
    trustValue: json["TrustValue"],
  );

  Map<String, dynamic> toJson() => {
    "CreditNoteAmount": creditNoteAmount,
    "DueDate": "${dueDate.year.toString().padLeft(4, '0')}-${dueDate.month.toString().padLeft(2, '0')}-${dueDate.day.toString().padLeft(2, '0')}",
    "RelatedClaim": relatedClaim,
    "IssueDate": "${issueDate.year.toString().padLeft(4, '0')}-${issueDate.month.toString().padLeft(2, '0')}-${issueDate.day.toString().padLeft(2, '0')}",
    "RelatedStatement": relatedStatement,
    "DateOfCreation": dateOfCreation.toIso8601String(),
    "Currency": currency,
    "Amount": amount,
    "CalledToVerified": calledToVerified,
    "InvoiceChecked": invoiceChecked,
    "TrustValue": trustValue,
  };
}

class Funder {
  Funder({
    this.funderUserId,
    this.fundFinancingAmount,
    this.funderName,
    this.id,
    this.fundAmount,
  });

  int funderUserId;
  int fundFinancingAmount;
  String funderName;
  int id;
  int fundAmount;

  factory Funder.fromJson(Map<String, dynamic> json) => Funder(
    funderUserId: json["FunderUserID"],
    fundFinancingAmount: json["FundFinancingAmount"],
    funderName: json["FunderName"],
    id: json["ID"],
    fundAmount: json["FundAmount"],
  );

  Map<String, dynamic> toJson() => {
    "FunderUserID": funderUserId,
    "FundFinancingAmount": fundFinancingAmount,
    "FunderName": funderName,
    "ID": id,
    "FundAmount": fundAmount,
  };
}

class ScheduleRepaymentInvestor {
  ScheduleRepaymentInvestor({
    this.paymentRepaymentFinancingCharge,
    this.updateUserId,
    this.paymentRepaymentLateChargeFee,
    this.invoiceId,
    this.repaymentPremium,
    this.dueDate,
    this.scheduleRepaymentInvestorId,
    this.paymentRepaymentFinancingChargeFee,
    this.repaymentFinancingCharge,
    this.scheduleRepaymentIssuerId,
    this.repaymentFinancingChargeFee,
    this.paymentRepaymentPremium,
    this.paymentRepaymentLateCharge,
    this.paymentDate,
  });

  int paymentRepaymentFinancingCharge;
  int updateUserId;
  int paymentRepaymentLateChargeFee;
  int invoiceId;
  int repaymentPremium;
  DateTime dueDate;
  int scheduleRepaymentInvestorId;
  int paymentRepaymentFinancingChargeFee;
  int repaymentFinancingCharge;
  int scheduleRepaymentIssuerId;
  int repaymentFinancingChargeFee;
  int paymentRepaymentPremium;
  int paymentRepaymentLateCharge;
  String paymentDate;

  factory ScheduleRepaymentInvestor.fromJson(Map<String, dynamic> json) => ScheduleRepaymentInvestor(
    paymentRepaymentFinancingCharge: json["Payment_Repayment_Financing_Charge"],
    updateUserId: json["Update_User_ID"],
    paymentRepaymentLateChargeFee: json["Payment_Repayment_Late_Charge_Fee"],
    invoiceId: json["Invoice_ID"],
    repaymentPremium: json["Repayment_Premium"],
    dueDate: DateTime.parse(json["Due_Date"]),
    scheduleRepaymentInvestorId: json["Schedule_Repayment_Investor_ID"],
    paymentRepaymentFinancingChargeFee: json["Payment_Repayment_Financing_Charge_Fee"],
    repaymentFinancingCharge: json["Repayment_Financing_Charge"],
    scheduleRepaymentIssuerId: json["Schedule_Repayment_Issuer_ID"],
    repaymentFinancingChargeFee: json["Repayment_Financing_Charge_Fee"],
    paymentRepaymentPremium: json["Payment_Repayment_Premium"],
    paymentRepaymentLateCharge: json["Payment_Repayment_Late_Charge"],
    paymentDate: json["Payment_Date"],
  );

  Map<String, dynamic> toJson() => {
    "Payment_Repayment_Financing_Charge": paymentRepaymentFinancingCharge,
    "Update_User_ID": updateUserId,
    "Payment_Repayment_Late_Charge_Fee": paymentRepaymentLateChargeFee,
    "Invoice_ID": invoiceId,
    "Repayment_Premium": repaymentPremium,
    "Due_Date": "${dueDate.year.toString().padLeft(4, '0')}-${dueDate.month.toString().padLeft(2, '0')}-${dueDate.day.toString().padLeft(2, '0')}",
    "Schedule_Repayment_Investor_ID": scheduleRepaymentInvestorId,
    "Payment_Repayment_Financing_Charge_Fee": paymentRepaymentFinancingChargeFee,
    "Repayment_Financing_Charge": repaymentFinancingCharge,
    "Schedule_Repayment_Issuer_ID": scheduleRepaymentIssuerId,
    "Repayment_Financing_Charge_Fee": repaymentFinancingChargeFee,
    "Payment_Repayment_Premium": paymentRepaymentPremium,
    "Payment_Repayment_Late_Charge": paymentRepaymentLateCharge,
    "Payment_Date": paymentDate,
  };
}

class ScheduleRepaymentIssuer {
  ScheduleRepaymentIssuer({
    this.updateUserId,
    this.premium,
    this.invoiceId,
    this.issuerRepaymentId,
    this.monthNumber,
    this.lateCharge,
    this.dueDate,
    this.isInvestorPayment,
    this.paidAdmin,
    this.ipfProposalOfferType,
    this.financingCharge,
    this.amountDue,
    this.sstStampDuties,
    this.active,
    this.paid,
  });

  int updateUserId;
  int premium;
  int invoiceId;
  int issuerRepaymentId;
  int monthNumber;
  int lateCharge;
  DateTime dueDate;
  int isInvestorPayment;
  int paidAdmin;
  int ipfProposalOfferType;
  int financingCharge;
  int amountDue;
  int sstStampDuties;
  int active;
  int paid;

  factory ScheduleRepaymentIssuer.fromJson(Map<String, dynamic> json) => ScheduleRepaymentIssuer(
    updateUserId: json["Update_User_ID"],
    premium: json["Premium"],
    invoiceId: json["Invoice_ID"],
    issuerRepaymentId: json["Issuer_Repayment_ID"],
    monthNumber: json["Month_Number"],
    lateCharge: json["Late_Charge"],
    dueDate: DateTime.parse(json["Due_Date"]),
    isInvestorPayment: json["Is_Investor_Payment"],
    paidAdmin: json["Paid_Admin"],
    ipfProposalOfferType: json["IPF_Proposal_Offer_Type"],
    financingCharge: json["Financing_Charge"],
    amountDue: json["Amount_Due"],
    sstStampDuties: json["SST_Stamp_Duties"],
    active: json["Active"],
    paid: json["Paid"],
  );

  Map<String, dynamic> toJson() => {
    "Update_User_ID": updateUserId,
    "Premium": premium,
    "Invoice_ID": invoiceId,
    "Issuer_Repayment_ID": issuerRepaymentId,
    "Month_Number": monthNumber,
    "Late_Charge": lateCharge,
    "Due_Date": "${dueDate.year.toString().padLeft(4, '0')}-${dueDate.month.toString().padLeft(2, '0')}-${dueDate.day.toString().padLeft(2, '0')}",
    "Is_Investor_Payment": isInvestorPayment,
    "Paid_Admin": paidAdmin,
    "IPF_Proposal_Offer_Type": ipfProposalOfferType,
    "Financing_Charge": financingCharge,
    "Amount_Due": amountDue,
    "SST_Stamp_Duties": sstStampDuties,
    "Active": active,
    "Paid": paid,
  };
}

class SupportingDocDetail {
  SupportingDocDetail({
    this.url,
    this.name,
    this.id,
  });

  String url;
  String name;
  int id;

  factory SupportingDocDetail.fromJson(Map<String, dynamic> json) => SupportingDocDetail(
    url: json["URL"],
    name: json["Name"],
    id: json["ID"],
  );

  Map<String, dynamic> toJson() => {
    "URL": url,
    "Name": name,
    "ID": id,
  };
}
class FundnowRequestModel {
  int UserID;
  String FetchType;

  FundnowRequestModel({
    this.UserID,
    this.FetchType,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'UserID': UserID.toString().trim(),
      'FetchType': FetchType.trim(),
    };

    return map;
  }
}
