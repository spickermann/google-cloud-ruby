# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datalabeling/v1beta1/instruction.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/cloud/datalabeling/v1beta1/dataset_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n3google/cloud/datalabeling/v1beta1/instruction.proto\x12!google.cloud.datalabeling.v1beta1\x1a\x19google/api/resource.proto\x1a/google/cloud/datalabeling/v1beta1/dataset.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xfd\x03\n\x0bInstruction\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12/\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12>\n\tdata_type\x18\x06 \x01(\x0e\x32+.google.cloud.datalabeling.v1beta1.DataType\x12N\n\x0f\x63sv_instruction\x18\x07 \x01(\x0b\x32\x31.google.cloud.datalabeling.v1beta1.CsvInstructionB\x02\x18\x01\x12J\n\x0fpdf_instruction\x18\t \x01(\x0b\x32\x31.google.cloud.datalabeling.v1beta1.PdfInstruction\x12\x1a\n\x12\x62locking_resources\x18\n \x03(\t:[\xea\x41X\n\'datalabeling.googleapis.com/Instruction\x12-projects/{project}/instructions/{instruction}\"&\n\x0e\x43svInstruction\x12\x14\n\x0cgcs_file_uri\x18\x01 \x01(\t\"&\n\x0ePdfInstruction\x12\x14\n\x0cgcs_file_uri\x18\x01 \x01(\tB\xe3\x01\n%com.google.cloud.datalabeling.v1beta1P\x01ZIcloud.google.com/go/datalabeling/apiv1beta1/datalabelingpb;datalabelingpb\xaa\x02!Google.Cloud.DataLabeling.V1Beta1\xca\x02!Google\\Cloud\\DataLabeling\\V1beta1\xea\x02$Google::Cloud::DataLabeling::V1beta1b\x06proto3"

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
    module DataLabeling
      module V1beta1
        Instruction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.Instruction").msgclass
        CsvInstruction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.CsvInstruction").msgclass
        PdfInstruction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.PdfInstruction").msgclass
      end
    end
  end
end
