# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/servicemanagement/v1/resources.proto

require 'google/protobuf'

require 'google/api/config_change_pb'
require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n/google/api/servicemanagement/v1/resources.proto\x12\x1fgoogle.api.servicemanagement.v1\x1a\x1egoogle/api/config_change.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"C\n\x0eManagedService\x12\x14\n\x0cservice_name\x18\x02 \x01(\t\x12\x1b\n\x13producer_project_id\x18\x03 \x01(\t\"\x91\x03\n\x11OperationMetadata\x12\x16\n\x0eresource_names\x18\x01 \x03(\t\x12\x46\n\x05steps\x18\x02 \x03(\x0b\x32\x37.google.api.servicemanagement.v1.OperationMetadata.Step\x12\x1b\n\x13progress_percentage\x18\x03 \x01(\x05\x12.\n\nstart_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1a\x66\n\x04Step\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12I\n\x06status\x18\x04 \x01(\x0e\x32\x39.google.api.servicemanagement.v1.OperationMetadata.Status\"g\n\x06Status\x12\x16\n\x12STATUS_UNSPECIFIED\x10\x00\x12\x08\n\x04\x44ONE\x10\x01\x12\x0f\n\x0bNOT_STARTED\x10\x02\x12\x0f\n\x0bIN_PROGRESS\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\x12\r\n\tCANCELLED\x10\x05\"\x8f\x01\n\nDiagnostic\x12\x10\n\x08location\x18\x01 \x01(\t\x12>\n\x04kind\x18\x02 \x01(\x0e\x32\x30.google.api.servicemanagement.v1.Diagnostic.Kind\x12\x0f\n\x07message\x18\x03 \x01(\t\"\x1e\n\x04Kind\x12\x0b\n\x07WARNING\x10\x00\x12\t\n\x05\x45RROR\x10\x01\"V\n\x0c\x43onfigSource\x12\n\n\x02id\x18\x05 \x01(\t\x12:\n\x05\x66iles\x18\x02 \x03(\x0b\x32+.google.api.servicemanagement.v1.ConfigFile\"\x95\x02\n\nConfigFile\x12\x11\n\tfile_path\x18\x01 \x01(\t\x12\x15\n\rfile_contents\x18\x03 \x01(\x0c\x12G\n\tfile_type\x18\x04 \x01(\x0e\x32\x34.google.api.servicemanagement.v1.ConfigFile.FileType\"\x93\x01\n\x08\x46ileType\x12\x19\n\x15\x46ILE_TYPE_UNSPECIFIED\x10\x00\x12\x17\n\x13SERVICE_CONFIG_YAML\x10\x01\x12\x11\n\rOPEN_API_JSON\x10\x02\x12\x11\n\rOPEN_API_YAML\x10\x03\x12\x1d\n\x19\x46ILE_DESCRIPTOR_SET_PROTO\x10\x04\x12\x0e\n\nPROTO_FILE\x10\x06\"\x19\n\tConfigRef\x12\x0c\n\x04name\x18\x01 \x01(\t\"@\n\x0c\x43hangeReport\x12\x30\n\x0e\x63onfig_changes\x18\x01 \x03(\x0b\x32\x18.google.api.ConfigChange\"\xf9\x05\n\x07Rollout\x12\x17\n\nrollout_id\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12/\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x12\n\ncreated_by\x18\x03 \x01(\t\x12\x46\n\x06status\x18\x04 \x01(\x0e\x32\x36.google.api.servicemanagement.v1.Rollout.RolloutStatus\x12\x63\n\x18traffic_percent_strategy\x18\x05 \x01(\x0b\x32?.google.api.servicemanagement.v1.Rollout.TrafficPercentStrategyH\x00\x12\x62\n\x17\x64\x65lete_service_strategy\x18\xc8\x01 \x01(\x0b\x32>.google.api.servicemanagement.v1.Rollout.DeleteServiceStrategyH\x00\x12\x14\n\x0cservice_name\x18\x08 \x01(\t\x1a\xb3\x01\n\x16TrafficPercentStrategy\x12\x65\n\x0bpercentages\x18\x01 \x03(\x0b\x32P.google.api.servicemanagement.v1.Rollout.TrafficPercentStrategy.PercentagesEntry\x1a\x32\n\x10PercentagesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x01:\x02\x38\x01\x1a\x17\n\x15\x44\x65leteServiceStrategy\"\x8d\x01\n\rRolloutStatus\x12\x1e\n\x1aROLLOUT_STATUS_UNSPECIFIED\x10\x00\x12\x0f\n\x0bIN_PROGRESS\x10\x01\x12\x0b\n\x07SUCCESS\x10\x02\x12\r\n\tCANCELLED\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\x12\x0b\n\x07PENDING\x10\x05\x12\x16\n\x12\x46\x41ILED_ROLLED_BACK\x10\x06\x42\n\n\x08strategyB\x82\x02\n#com.google.api.servicemanagement.v1B\x0eResourcesProtoP\x01ZScloud.google.com/go/servicemanagement/apiv1/servicemanagementpb;servicemanagementpb\xa2\x02\x04GASM\xaa\x02!Google.Cloud.ServiceManagement.V1\xca\x02!Google\\Cloud\\ServiceManagement\\V1\xea\x02$Google::Cloud::ServiceManagement::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.api.ConfigChange", "google/api/config_change.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module ServiceManagement
      module V1
        ManagedService = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.ManagedService").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.OperationMetadata").msgclass
        OperationMetadata::Step = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.OperationMetadata.Step").msgclass
        OperationMetadata::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.OperationMetadata.Status").enummodule
        Diagnostic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.Diagnostic").msgclass
        Diagnostic::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.Diagnostic.Kind").enummodule
        ConfigSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.ConfigSource").msgclass
        ConfigFile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.ConfigFile").msgclass
        ConfigFile::FileType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.ConfigFile.FileType").enummodule
        ConfigRef = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.ConfigRef").msgclass
        ChangeReport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.ChangeReport").msgclass
        Rollout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.Rollout").msgclass
        Rollout::TrafficPercentStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.Rollout.TrafficPercentStrategy").msgclass
        Rollout::DeleteServiceStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.Rollout.DeleteServiceStrategy").msgclass
        Rollout::RolloutStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.servicemanagement.v1.Rollout.RolloutStatus").enummodule
      end
    end
  end
end
