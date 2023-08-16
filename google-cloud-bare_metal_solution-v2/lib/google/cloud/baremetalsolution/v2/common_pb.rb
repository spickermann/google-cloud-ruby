# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/baremetalsolution/v2/common.proto

require 'google/protobuf'


descriptor_data = "\n.google/cloud/baremetalsolution/v2/common.proto\x12!google.cloud.baremetalsolution.v2*\xaa\x01\n\x15VolumePerformanceTier\x12\'\n#VOLUME_PERFORMANCE_TIER_UNSPECIFIED\x10\x00\x12\"\n\x1eVOLUME_PERFORMANCE_TIER_SHARED\x10\x01\x12$\n VOLUME_PERFORMANCE_TIER_ASSIGNED\x10\x02\x12\x1e\n\x1aVOLUME_PERFORMANCE_TIER_HT\x10\x03*l\n\x0fWorkloadProfile\x12 \n\x1cWORKLOAD_PROFILE_UNSPECIFIED\x10\x00\x12\x1c\n\x18WORKLOAD_PROFILE_GENERIC\x10\x01\x12\x19\n\x15WORKLOAD_PROFILE_HANA\x10\x02\x42\xfa\x01\n%com.google.cloud.baremetalsolution.v2B\x0b\x43ommonProtoP\x01ZScloud.google.com/go/baremetalsolution/apiv2/baremetalsolutionpb;baremetalsolutionpb\xaa\x02!Google.Cloud.BareMetalSolution.V2\xca\x02!Google\\Cloud\\BareMetalSolution\\V2\xea\x02$Google::Cloud::BareMetalSolution::V2b\x06proto3"

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
    module BareMetalSolution
      module V2
        VolumePerformanceTier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VolumePerformanceTier").enummodule
        WorkloadProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.WorkloadProfile").enummodule
      end
    end
  end
end
