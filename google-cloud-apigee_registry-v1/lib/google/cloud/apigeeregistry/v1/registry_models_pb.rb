# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/apigeeregistry/v1/registry_models.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n4google/cloud/apigeeregistry/v1/registry_models.proto\x12\x1egoogle.cloud.apigeeregistry.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xa9\x05\n\x03\x41pi\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x14\n\x0c\x61vailability\x18\x06 \x01(\t\x12J\n\x13recommended_version\x18\x07 \x01(\tB-\xfa\x41*\n(apigeeregistry.googleapis.com/ApiVersion\x12P\n\x16recommended_deployment\x18\x08 \x01(\tB0\xfa\x41-\n+apigeeregistry.googleapis.com/ApiDeployment\x12?\n\x06labels\x18\t \x03(\x0b\x32/.google.cloud.apigeeregistry.v1.Api.LabelsEntry\x12I\n\x0b\x61nnotations\x18\n \x03(\x0b\x32\x34.google.cloud.apigeeregistry.v1.Api.AnnotationsEntry\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:Z\xea\x41W\n!apigeeregistry.googleapis.com/Api\x12\x32projects/{project}/locations/{location}/apis/{api}\"\xb3\x04\n\nApiVersion\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\r\n\x05state\x18\x06 \x01(\t\x12\x46\n\x06labels\x18\x07 \x03(\x0b\x32\x36.google.cloud.apigeeregistry.v1.ApiVersion.LabelsEntry\x12P\n\x0b\x61nnotations\x18\x08 \x03(\x0b\x32;.google.cloud.apigeeregistry.v1.ApiVersion.AnnotationsEntry\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:t\xea\x41q\n(apigeeregistry.googleapis.com/ApiVersion\x12\x45projects/{project}/locations/{location}/apis/{api}/versions/{version}\"\xf0\x05\n\x07\x41piSpec\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x10\n\x08\x66ilename\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x1b\n\x0brevision_id\x18\x04 \x01(\tB\x06\xe0\x41\x05\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12=\n\x14revision_create_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12=\n\x14revision_update_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x11\n\tmime_type\x18\x08 \x01(\t\x12\x17\n\nsize_bytes\x18\t \x01(\x05\x42\x03\xe0\x41\x03\x12\x11\n\x04hash\x18\n \x01(\tB\x03\xe0\x41\x03\x12\x12\n\nsource_uri\x18\x0b \x01(\t\x12\x15\n\x08\x63ontents\x18\x0c \x01(\x0c\x42\x03\xe0\x41\x04\x12\x43\n\x06labels\x18\x0e \x03(\x0b\x32\x33.google.cloud.apigeeregistry.v1.ApiSpec.LabelsEntry\x12M\n\x0b\x61nnotations\x18\x0f \x03(\x0b\x32\x38.google.cloud.apigeeregistry.v1.ApiSpec.AnnotationsEntry\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:~\xea\x41{\n%apigeeregistry.googleapis.com/ApiSpec\x12Rprojects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}\"\xca\x06\n\rApiDeployment\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x1b\n\x0brevision_id\x18\x04 \x01(\tB\x06\xe0\x41\x05\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12=\n\x14revision_create_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12=\n\x14revision_update_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x45\n\x11\x61pi_spec_revision\x18\x08 \x01(\tB*\xfa\x41\'\n%apigeeregistry.googleapis.com/ApiSpec\x12\x14\n\x0c\x65ndpoint_uri\x18\t \x01(\t\x12\x1c\n\x14\x65xternal_channel_uri\x18\n \x01(\t\x12\x19\n\x11intended_audience\x18\x0b \x01(\t\x12\x17\n\x0f\x61\x63\x63\x65ss_guidance\x18\x0c \x01(\t\x12I\n\x06labels\x18\x0e \x03(\x0b\x32\x39.google.cloud.apigeeregistry.v1.ApiDeployment.LabelsEntry\x12S\n\x0b\x61nnotations\x18\x0f \x03(\x0b\x32>.google.cloud.apigeeregistry.v1.ApiDeployment.AnnotationsEntry\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:}\xea\x41z\n+apigeeregistry.googleapis.com/ApiDeployment\x12Kprojects/{project}/locations/{location}/apis/{api}/deployments/{deployment}\"\xb7\x05\n\x08\x41rtifact\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x11\n\tmime_type\x18\x04 \x01(\t\x12\x17\n\nsize_bytes\x18\x05 \x01(\x05\x42\x03\xe0\x41\x03\x12\x11\n\x04hash\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12\x15\n\x08\x63ontents\x18\x07 \x01(\x0c\x42\x03\xe0\x41\x04:\xda\x03\xea\x41\xd6\x03\n&apigeeregistry.googleapis.com/Artifact\x12<projects/{project}/locations/{location}/artifacts/{artifact}\x12Gprojects/{project}/locations/{location}/apis/{api}/artifacts/{artifact}\x12Zprojects/{project}/locations/{location}/apis/{api}/versions/{version}/artifacts/{artifact}\x12gprojects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}/artifacts/{artifact}\x12`projects/{project}/locations/{location}/apis/{api}/deployments/{deployment}/artifacts/{artifact}B\xed\x01\n\"com.google.cloud.apigeeregistry.v1B\x13RegistryModelsProtoP\x01ZJcloud.google.com/go/apigeeregistry/apiv1/apigeeregistrypb;apigeeregistrypb\xaa\x02\x1eGoogle.Cloud.ApigeeRegistry.V1\xca\x02\x1eGoogle\\Cloud\\ApigeeRegistry\\V1\xea\x02!Google::Cloud::ApigeeRegistry::V1b\x06proto3"

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
    module ApigeeRegistry
      module V1
        Api = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.Api").msgclass
        ApiVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ApiVersion").msgclass
        ApiSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ApiSpec").msgclass
        ApiDeployment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ApiDeployment").msgclass
        Artifact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.Artifact").msgclass
      end
    end
  end
end
