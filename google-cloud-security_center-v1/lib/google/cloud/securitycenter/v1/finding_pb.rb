# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/finding.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/securitycenter/v1/access_pb'
require 'google/cloud/securitycenter/v1/compliance_pb'
require 'google/cloud/securitycenter/v1/connection_pb'
require 'google/cloud/securitycenter/v1/contact_details_pb'
require 'google/cloud/securitycenter/v1/container_pb'
require 'google/cloud/securitycenter/v1/database_pb'
require 'google/cloud/securitycenter/v1/exfiltration_pb'
require 'google/cloud/securitycenter/v1/external_system_pb'
require 'google/cloud/securitycenter/v1/file_pb'
require 'google/cloud/securitycenter/v1/iam_binding_pb'
require 'google/cloud/securitycenter/v1/indicator_pb'
require 'google/cloud/securitycenter/v1/kernel_rootkit_pb'
require 'google/cloud/securitycenter/v1/kubernetes_pb'
require 'google/cloud/securitycenter/v1/mitre_attack_pb'
require 'google/cloud/securitycenter/v1/process_pb'
require 'google/cloud/securitycenter/v1/security_marks_pb'
require 'google/cloud/securitycenter/v1/vulnerability_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1/finding.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1.Finding" do
      optional :name, :string, 1
      optional :parent, :string, 2
      optional :resource_name, :string, 3
      optional :state, :enum, 4, "google.cloud.securitycenter.v1.Finding.State"
      optional :category, :string, 5
      optional :external_uri, :string, 6
      map :source_properties, :string, :message, 7, "google.protobuf.Value"
      optional :security_marks, :message, 8, "google.cloud.securitycenter.v1.SecurityMarks"
      optional :event_time, :message, 9, "google.protobuf.Timestamp"
      optional :create_time, :message, 10, "google.protobuf.Timestamp"
      optional :severity, :enum, 12, "google.cloud.securitycenter.v1.Finding.Severity"
      optional :canonical_name, :string, 14
      optional :mute, :enum, 15, "google.cloud.securitycenter.v1.Finding.Mute"
      optional :finding_class, :enum, 17, "google.cloud.securitycenter.v1.Finding.FindingClass"
      optional :indicator, :message, 18, "google.cloud.securitycenter.v1.Indicator"
      optional :vulnerability, :message, 20, "google.cloud.securitycenter.v1.Vulnerability"
      optional :mute_update_time, :message, 21, "google.protobuf.Timestamp"
      map :external_systems, :string, :message, 22, "google.cloud.securitycenter.v1.ExternalSystem"
      optional :mitre_attack, :message, 25, "google.cloud.securitycenter.v1.MitreAttack"
      optional :access, :message, 26, "google.cloud.securitycenter.v1.Access"
      repeated :connections, :message, 31, "google.cloud.securitycenter.v1.Connection"
      optional :mute_initiator, :string, 28
      repeated :processes, :message, 30, "google.cloud.securitycenter.v1.Process"
      map :contacts, :string, :message, 33, "google.cloud.securitycenter.v1.ContactDetails"
      repeated :compliances, :message, 34, "google.cloud.securitycenter.v1.Compliance"
      optional :parent_display_name, :string, 36
      optional :description, :string, 37
      optional :exfiltration, :message, 38, "google.cloud.securitycenter.v1.Exfiltration"
      repeated :iam_bindings, :message, 39, "google.cloud.securitycenter.v1.IamBinding"
      optional :next_steps, :string, 40
      optional :module_name, :string, 41
      repeated :containers, :message, 42, "google.cloud.securitycenter.v1.Container"
      optional :kubernetes, :message, 43, "google.cloud.securitycenter.v1.Kubernetes"
      optional :database, :message, 44, "google.cloud.securitycenter.v1.Database"
      repeated :files, :message, 46, "google.cloud.securitycenter.v1.File"
      optional :kernel_rootkit, :message, 50, "google.cloud.securitycenter.v1.KernelRootkit"
    end
    add_enum "google.cloud.securitycenter.v1.Finding.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :INACTIVE, 2
    end
    add_enum "google.cloud.securitycenter.v1.Finding.Severity" do
      value :SEVERITY_UNSPECIFIED, 0
      value :CRITICAL, 1
      value :HIGH, 2
      value :MEDIUM, 3
      value :LOW, 4
    end
    add_enum "google.cloud.securitycenter.v1.Finding.Mute" do
      value :MUTE_UNSPECIFIED, 0
      value :MUTED, 1
      value :UNMUTED, 2
      value :UNDEFINED, 4
    end
    add_enum "google.cloud.securitycenter.v1.Finding.FindingClass" do
      value :FINDING_CLASS_UNSPECIFIED, 0
      value :THREAT, 1
      value :VULNERABILITY, 2
      value :MISCONFIGURATION, 3
      value :OBSERVATION, 4
      value :SCC_ERROR, 5
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1
        Finding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding").msgclass
        Finding::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.State").enummodule
        Finding::Severity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.Severity").enummodule
        Finding::Mute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.Mute").enummodule
        Finding::FindingClass = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Finding.FindingClass").enummodule
      end
    end
  end
end
