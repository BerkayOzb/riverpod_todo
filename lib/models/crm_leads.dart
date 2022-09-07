// To parse this JSON data, do
//
//     final crmLeads = crmLeadsFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators

import 'dart:convert';

CrmLeads crmLeadsFromMap(String str) => CrmLeads.fromMap(json.decode(str));

String crmLeadsToMap(CrmLeads data) => json.encode(data.toMap());

class CrmLeads {
  CrmLeads({
    this.created,
    this.dataform,
    this.dataformId,
    this.dbvalues,
    this.fieldAttachments,
    this.fields,
    this.id,
    this.kanbanPosition,
    this.modified,
    this.numCalls,
    this.numComments,
    this.numEmails,
    this.numFiles,
    this.numSms,
    this.numTasks,
    this.resourceUri,
    this.tasksScheduleStatus,
  });

  DateTime? created;
  String? dataform;
  String? dataformId;
  Dbvalues? dbvalues;
  FieldAttachments? fieldAttachments;
  Fields? fields;
  String? id;
  double? kanbanPosition;
  DateTime? modified;
  int? numCalls;
  int? numComments;
  int? numEmails;
  int? numFiles;
  int? numSms;
  NumTasks? numTasks;
  String? resourceUri;
  dynamic tasksScheduleStatus;

  factory CrmLeads.fromMap(Map<String, dynamic> json) => CrmLeads(
        created:
            json["created"] == null ? null : DateTime.parse(json["created"]),
        dataform: json["dataform"] == null ? null : json["dataform"],
        dataformId: json["dataform_id"] == null ? null : json["dataform_id"],
        dbvalues: json["dbvalues"] == null
            ? null
            : Dbvalues.fromMap(json["dbvalues"]),
        fieldAttachments: json["field_attachments"] == null
            ? null
            : FieldAttachments.fromMap(json["field_attachments"]),
        fields: json["fields"] == null ? null : Fields.fromMap(json["fields"]),
        id: json["id"] == null ? null : json["id"],
        kanbanPosition:
            json["kanban_position"] == null ? null : json["kanban_position"],
        modified:
            json["modified"] == null ? null : DateTime.parse(json["modified"]),
        numCalls: json["num_calls"] == null ? null : json["num_calls"],
        numComments: json["num_comments"] == null ? null : json["num_comments"],
        numEmails: json["num_emails"] == null ? null : json["num_emails"],
        numFiles: json["num_files"] == null ? null : json["num_files"],
        numSms: json["num_sms"] == null ? null : json["num_sms"],
        numTasks: json["num_tasks"] == null
            ? null
            : NumTasks.fromMap(json["num_tasks"]),
        resourceUri: json["resource_uri"] == null ? null : json["resource_uri"],
        tasksScheduleStatus: json["tasks_schedule_status"],
      );

  Map<String, dynamic> toMap() => {
        "created": created == null ? null : created!.toIso8601String(),
        "dataform": dataform == null ? null : dataform,
        "dataform_id": dataformId == null ? null : dataformId,
        "dbvalues": dbvalues == null ? null : dbvalues!.toMap(),
        "field_attachments":
            fieldAttachments == null ? null : fieldAttachments!.toMap(),
        "fields": fields == null ? null : fields!.toMap(),
        "id": id == null ? null : id,
        "kanban_position": kanbanPosition == null ? null : kanbanPosition,
        "modified": modified == null ? null : modified!.toIso8601String(),
        "num_calls": numCalls == null ? null : numCalls,
        "num_comments": numComments == null ? null : numComments,
        "num_emails": numEmails == null ? null : numEmails,
        "num_files": numFiles == null ? null : numFiles,
        "num_sms": numSms == null ? null : numSms,
        "num_tasks": numTasks == null ? null : numTasks!.toMap(),
        "resource_uri": resourceUri == null ? null : resourceUri,
        "tasks_schedule_status": tasksScheduleStatus,
      };
}

class Dbvalues {
  Dbvalues({
    this.createdBy,
    this.lastModifiedBy,
  });

  int? createdBy;
  int? lastModifiedBy;

  factory Dbvalues.fromMap(Map<String, dynamic> json) => Dbvalues(
        createdBy: json["created_by"] == null ? null : json["created_by"],
        lastModifiedBy:
            json["last_modified_by"] == null ? null : json["last_modified_by"],
      );

  Map<String, dynamic> toMap() => {
        "created_by": createdBy == null ? null : createdBy,
        "last_modified_by": lastModifiedBy == null ? null : lastModifiedBy,
      };
}

class FieldAttachments {
  FieldAttachments();

  factory FieldAttachments.fromMap(Map<String, dynamic> json) =>
      FieldAttachments();

  Map<String, dynamic> toMap() => {};
}

class Fields {
  Fields({
    this.title,
    this.adCampaign,
    this.adName,
    this.adsetName,
    this.appointmentDate,
    this.appointmentTime,
    this.company,
    this.country,
    this.createdBy,
    this.createdDate,
    this.createdTime,
    this.email,
    this.formId,
    this.id,
    this.language1,
    this.lastModifiedBy,
    this.lastModifiedDate,
    this.lastModifiedTime,
    this.leadStatus,
    this.message,
    this.name,
    this.notes,
    this.occupation,
    this.phone,
    this.platform,
    this.projectInterest,
    this.projectName,
    this.source,
    this.status,
    this.whoAreYou,
  });

  String? title;
  String? adCampaign;
  String? adName;
  String? adsetName;
  String? appointmentDate;
  String? appointmentTime;
  String? company;
  String? country;
  String? createdBy;
  DateTime? createdDate;
  String? createdTime;
  String? email;
  String? formId;
  int? id;
  String? language1;
  String? lastModifiedBy;
  DateTime? lastModifiedDate;
  String? lastModifiedTime;
  String? leadStatus;
  String? message;
  String? name;
  String? notes;
  String? occupation;
  String? phone;
  String? platform;
  String? projectInterest;
  dynamic projectName;
  String? source;
  String? status;
  String? whoAreYou;

  factory Fields.fromMap(Map<String, dynamic> json) => Fields(
        title: json["_title"] == null ? null : json["_title"],
        adCampaign: json["ad_campaign"] == null ? null : json["ad_campaign"],
        adName: json["ad_name"] == null ? null : json["ad_name"],
        adsetName: json["adset_name"] == null ? null : json["adset_name"],
        appointmentDate:
            json["appointment_date"] == null ? null : json["appointment_date"],
        appointmentTime:
            json["appointment_time"] == null ? null : json["appointment_time"],
        company: json["company"] == null ? null : json["company"],
        country: json["country"] == null ? null : json["country"],
        createdBy: json["created_by"] == null ? null : json["created_by"],
        createdDate: json["created_date"] == null
            ? null
            : DateTime.parse(json["created_date"]),
        createdTime: json["created_time"] == null ? null : json["created_time"],
        email: json["email"] == null ? null : json["email"],
        formId: json["form_id"] == null ? null : json["form_id"],
        id: json["id"] == null ? null : json["id"],
        language1: json["language1"] == null ? null : json["language1"],
        lastModifiedBy:
            json["last_modified_by"] == null ? null : json["last_modified_by"],
        lastModifiedDate: json["last_modified_date"] == null
            ? null
            : DateTime.parse(json["last_modified_date"]),
        lastModifiedTime: json["last_modified_time"] == null
            ? null
            : json["last_modified_time"],
        leadStatus: json["lead_status"] == null ? null : json["lead_status"],
        message: json["message"] == null ? null : json["message"],
        name: json["name"] == null ? null : json["name"],
        notes: json["notes"] == null ? null : json["notes"],
        occupation: json["occupation"] == null ? null : json["occupation"],
        phone: json["phone"] == null ? null : json["phone"],
        platform: json["platform"] == null ? null : json["platform"],
        projectInterest:
            json["project_interest"] == null ? null : json["project_interest"],
        projectName: json["project_name"],
        source: json["source"] == null ? null : json["source"],
        status: json["status"] == null ? null : json["status"],
        whoAreYou: json["who_are_you"] == null ? null : json["who_are_you"],
      );

  Map<String, dynamic> toMap() => {
        "_title": title == null ? null : title,
        "ad_campaign": adCampaign == null ? null : adCampaign,
        "ad_name": adName == null ? null : adName,
        "adset_name": adsetName == null ? null : adsetName,
        "appointment_date": appointmentDate == null ? null : appointmentDate,
        "appointment_time": appointmentTime == null ? null : appointmentTime,
        "company": company == null ? null : company,
        "country": country == null ? null : country,
        "created_by": createdBy == null ? null : createdBy,
        "created_date": createdDate == null
            ? null
            : "${createdDate!.year.toString().padLeft(4, '0')}-${createdDate!.month.toString().padLeft(2, '0')}-${createdDate!.day.toString().padLeft(2, '0')}",
        "created_time": createdTime == null ? null : createdTime,
        "email": email == null ? null : email,
        "form_id": formId == null ? null : formId,
        "id": id == null ? null : id,
        "language1": language1 == null ? null : language1,
        "last_modified_by": lastModifiedBy == null ? null : lastModifiedBy,
        "last_modified_date": lastModifiedDate == null
            ? null
            : "${lastModifiedDate!.year.toString().padLeft(4, '0')}-${lastModifiedDate!.month.toString().padLeft(2, '0')}-${lastModifiedDate!.day.toString().padLeft(2, '0')}",
        "last_modified_time":
            lastModifiedTime == null ? null : lastModifiedTime,
        "lead_status": leadStatus == null ? null : leadStatus,
        "message": message == null ? null : message,
        "name": name == null ? null : name,
        "notes": notes == null ? null : notes,
        "occupation": occupation == null ? null : occupation,
        "phone": phone == null ? null : phone,
        "platform": platform == null ? null : platform,
        "project_interest": projectInterest == null ? null : projectInterest,
        "project_name": projectName,
        "source": source == null ? null : source,
        "status": status == null ? null : status,
        "who_are_you": whoAreYou == null ? null : whoAreYou,
      };
}

class NumTasks {
  NumTasks({
    this.completed,
    this.open,
    this.total,
  });

  int? completed;
  int? open;
  int? total;

  factory NumTasks.fromMap(Map<String, dynamic> json) => NumTasks(
        completed: json["completed"] == null ? null : json["completed"],
        open: json["open"] == null ? null : json["open"],
        total: json["total"] == null ? null : json["total"],
      );

  Map<String, dynamic> toMap() => {
        "completed": completed == null ? null : completed,
        "open": open == null ? null : open,
        "total": total == null ? null : total,
      };
}
