# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/metadata_schema.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n0google/cloud/aiplatform/v1/metadata_schema.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x80\x04\n\x0eMetadataSchema\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x16\n\x0eschema_version\x18\x02 \x01(\t\x12\x13\n\x06schema\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12R\n\x0bschema_type\x18\x04 \x01(\x0e\x32=.google.cloud.aiplatform.v1.MetadataSchema.MetadataSchemaType\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x06 \x01(\t\"s\n\x12MetadataSchemaType\x12$\n METADATA_SCHEMA_TYPE_UNSPECIFIED\x10\x00\x12\x11\n\rARTIFACT_TYPE\x10\x01\x12\x12\n\x0e\x45XECUTION_TYPE\x10\x02\x12\x10\n\x0c\x43ONTEXT_TYPE\x10\x03:\x99\x01\xea\x41\x95\x01\n(aiplatform.googleapis.com/MetadataSchema\x12iprojects/{project}/locations/{location}/metadataStores/{metadata_store}/metadataSchemas/{metadata_schema}B\xd1\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x13MetadataSchemaProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    module AIPlatform
      module V1
        MetadataSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.MetadataSchema").msgclass
        MetadataSchema::MetadataSchemaType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.MetadataSchema.MetadataSchemaType").enummodule
      end
    end
  end
end
