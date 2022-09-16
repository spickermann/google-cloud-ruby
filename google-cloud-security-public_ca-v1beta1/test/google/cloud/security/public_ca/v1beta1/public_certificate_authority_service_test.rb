# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/security/publicca/v1beta1/service_pb"
require "google/cloud/security/publicca/v1beta1/service_services_pb"
require "google/cloud/security/public_ca/v1beta1/public_certificate_authority_service"

class ::Google::Cloud::Security::PublicCA::V1beta1::PublicCertificateAuthorityService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_external_account_key
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Security::PublicCA::V1beta1::ExternalAccountKey.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    external_account_key = {}

    create_external_account_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_external_account_key, name
      assert_kind_of ::Google::Cloud::Security::PublicCA::V1beta1::CreateExternalAccountKeyRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Security::PublicCA::V1beta1::ExternalAccountKey), request["external_account_key"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_external_account_key_client_stub do
      # Create client
      client = ::Google::Cloud::Security::PublicCA::V1beta1::PublicCertificateAuthorityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_external_account_key({ parent: parent, external_account_key: external_account_key }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_external_account_key parent: parent, external_account_key: external_account_key do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_external_account_key ::Google::Cloud::Security::PublicCA::V1beta1::CreateExternalAccountKeyRequest.new(parent: parent, external_account_key: external_account_key) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_external_account_key({ parent: parent, external_account_key: external_account_key }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_external_account_key(::Google::Cloud::Security::PublicCA::V1beta1::CreateExternalAccountKeyRequest.new(parent: parent, external_account_key: external_account_key), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_external_account_key_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Security::PublicCA::V1beta1::PublicCertificateAuthorityService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Security::PublicCA::V1beta1::PublicCertificateAuthorityService::Client::Configuration, config
  end
end
