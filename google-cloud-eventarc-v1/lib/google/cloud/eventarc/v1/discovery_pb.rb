# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/discovery.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n(google/cloud/eventarc/v1/discovery.proto\x12\x18google.cloud.eventarc.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xf1\x01\n\x08Provider\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12=\n\x0b\x65vent_types\x18\x03 \x03(\x0b\x32#.google.cloud.eventarc.v1.EventTypeB\x03\xe0\x41\x03:x\xea\x41u\n eventarc.googleapis.com/Provider\x12<projects/{project}/locations/{location}/providers/{provider}*\tproviders2\x08provider\"\xa8\x01\n\tEventType\x12\x11\n\x04type\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12O\n\x14\x66iltering_attributes\x18\x03 \x03(\x0b\x32,.google.cloud.eventarc.v1.FilteringAttributeB\x03\xe0\x41\x03\x12\x1d\n\x10\x65vent_schema_uri\x18\x04 \x01(\tB\x03\xe0\x41\x03\"\x82\x01\n\x12\x46ilteringAttribute\x12\x16\n\tattribute\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x15\n\x08required\x18\x03 \x01(\x08\x42\x03\xe0\x41\x03\x12#\n\x16path_pattern_supported\x18\x04 \x01(\x08\x42\x03\xe0\x41\x03\x42j\n\x1c\x63om.google.cloud.eventarc.v1B\x0e\x44iscoveryProtoP\x01Z8cloud.google.com/go/eventarc/apiv1/eventarcpb;eventarcpbb\x06proto3"

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
    module Eventarc
      module V1
        Provider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Provider").msgclass
        EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.EventType").msgclass
        FilteringAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.FilteringAttribute").msgclass
      end
    end
  end
end
