# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/event.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.talent.v4beta1.ClientEvent" do
    optional :request_id, :string, 1
    optional :event_id, :string, 2
    optional :create_time, :message, 4, "google.protobuf.Timestamp"
    optional :event_notes, :string, 9
    oneof :event do
      optional :job_event, :message, 5, "google.cloud.talent.v4beta1.JobEvent"
      optional :profile_event, :message, 6, "google.cloud.talent.v4beta1.ProfileEvent"
    end
  end
  add_message "google.cloud.talent.v4beta1.JobEvent" do
    optional :type, :enum, 1, "google.cloud.talent.v4beta1.JobEvent.JobEventType"
    repeated :jobs, :string, 2
    optional :profile, :string, 3
  end
  add_enum "google.cloud.talent.v4beta1.JobEvent.JobEventType" do
    value :JOB_EVENT_TYPE_UNSPECIFIED, 0
    value :IMPRESSION, 1
    value :VIEW, 2
    value :VIEW_REDIRECT, 3
    value :APPLICATION_START, 4
    value :APPLICATION_FINISH, 5
    value :APPLICATION_QUICK_SUBMISSION, 6
    value :APPLICATION_REDIRECT, 7
    value :APPLICATION_START_FROM_SEARCH, 8
    value :APPLICATION_REDIRECT_FROM_SEARCH, 9
    value :APPLICATION_COMPANY_SUBMIT, 10
    value :BOOKMARK, 11
    value :NOTIFICATION, 12
    value :HIRED, 13
    value :SENT_CV, 14
    value :INTERVIEW_GRANTED, 15
  end
  add_message "google.cloud.talent.v4beta1.ProfileEvent" do
    optional :type, :enum, 1, "google.cloud.talent.v4beta1.ProfileEvent.ProfileEventType"
    repeated :profiles, :string, 2
    repeated :jobs, :string, 6
  end
  add_enum "google.cloud.talent.v4beta1.ProfileEvent.ProfileEventType" do
    value :PROFILE_EVENT_TYPE_UNSPECIFIED, 0
    value :IMPRESSION, 1
    value :VIEW, 2
    value :BOOKMARK, 3
  end
end

module Google
  module Cloud
    module Talent
      module V4beta1
        ClientEvent = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ClientEvent").msgclass
        JobEvent = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobEvent").msgclass
        JobEvent::JobEventType = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobEvent.JobEventType").enummodule
        ProfileEvent = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ProfileEvent").msgclass
        ProfileEvent::ProfileEventType = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ProfileEvent.ProfileEventType").enummodule
      end
    end
  end
end
