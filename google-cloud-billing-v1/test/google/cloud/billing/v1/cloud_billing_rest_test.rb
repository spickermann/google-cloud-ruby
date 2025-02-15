# frozen_string_literal: true

# Copyright 2023 Google LLC
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
require "gapic/rest"
require "google/cloud/billing/v1/cloud_billing_pb"
require "google/cloud/billing/v1/cloud_billing/rest"


class ::Google::Cloud::Billing::V1::CloudBilling::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_get_billing_account
    # Create test objects.
    client_result = ::Google::Cloud::Billing::V1::BillingAccount.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_billing_account_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Billing::V1::CloudBilling::Rest::ServiceStub.stub :transcode_get_billing_account_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_billing_account_client_stub do
        # Create client
        client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_billing_account({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_billing_account name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_billing_account ::Google::Cloud::Billing::V1::GetBillingAccountRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_billing_account({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_billing_account(::Google::Cloud::Billing::V1::GetBillingAccountRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_billing_account_client_stub.call_count
      end
    end
  end

  def test_list_billing_accounts
    # Create test objects.
    client_result = ::Google::Cloud::Billing::V1::ListBillingAccountsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_billing_accounts_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Billing::V1::CloudBilling::Rest::ServiceStub.stub :transcode_list_billing_accounts_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_billing_accounts_client_stub do
        # Create client
        client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_billing_accounts({ page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_billing_accounts page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_billing_accounts ::Google::Cloud::Billing::V1::ListBillingAccountsRequest.new(page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_billing_accounts({ page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_billing_accounts(::Google::Cloud::Billing::V1::ListBillingAccountsRequest.new(page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_billing_accounts_client_stub.call_count
      end
    end
  end

  def test_update_billing_account
    # Create test objects.
    client_result = ::Google::Cloud::Billing::V1::BillingAccount.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    account = {}
    update_mask = {}

    update_billing_account_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Billing::V1::CloudBilling::Rest::ServiceStub.stub :transcode_update_billing_account_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_billing_account_client_stub do
        # Create client
        client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_billing_account({ name: name, account: account, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_billing_account name: name, account: account, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_billing_account ::Google::Cloud::Billing::V1::UpdateBillingAccountRequest.new(name: name, account: account, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_billing_account({ name: name, account: account, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_billing_account(::Google::Cloud::Billing::V1::UpdateBillingAccountRequest.new(name: name, account: account, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_billing_account_client_stub.call_count
      end
    end
  end

  def test_create_billing_account
    # Create test objects.
    client_result = ::Google::Cloud::Billing::V1::BillingAccount.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    billing_account = {}

    create_billing_account_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Billing::V1::CloudBilling::Rest::ServiceStub.stub :transcode_create_billing_account_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_billing_account_client_stub do
        # Create client
        client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_billing_account({ billing_account: billing_account }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_billing_account billing_account: billing_account do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_billing_account ::Google::Cloud::Billing::V1::CreateBillingAccountRequest.new(billing_account: billing_account) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_billing_account({ billing_account: billing_account }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_billing_account(::Google::Cloud::Billing::V1::CreateBillingAccountRequest.new(billing_account: billing_account), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_billing_account_client_stub.call_count
      end
    end
  end

  def test_list_project_billing_info
    # Create test objects.
    client_result = ::Google::Cloud::Billing::V1::ListProjectBillingInfoResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    page_size = 42
    page_token = "hello world"

    list_project_billing_info_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Billing::V1::CloudBilling::Rest::ServiceStub.stub :transcode_list_project_billing_info_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_project_billing_info_client_stub do
        # Create client
        client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_project_billing_info({ name: name, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_project_billing_info name: name, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_project_billing_info ::Google::Cloud::Billing::V1::ListProjectBillingInfoRequest.new(name: name, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_project_billing_info({ name: name, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_project_billing_info(::Google::Cloud::Billing::V1::ListProjectBillingInfoRequest.new(name: name, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_project_billing_info_client_stub.call_count
      end
    end
  end

  def test_get_project_billing_info
    # Create test objects.
    client_result = ::Google::Cloud::Billing::V1::ProjectBillingInfo.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_project_billing_info_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Billing::V1::CloudBilling::Rest::ServiceStub.stub :transcode_get_project_billing_info_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_project_billing_info_client_stub do
        # Create client
        client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_project_billing_info({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_project_billing_info name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_project_billing_info ::Google::Cloud::Billing::V1::GetProjectBillingInfoRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_project_billing_info({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_project_billing_info(::Google::Cloud::Billing::V1::GetProjectBillingInfoRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_project_billing_info_client_stub.call_count
      end
    end
  end

  def test_update_project_billing_info
    # Create test objects.
    client_result = ::Google::Cloud::Billing::V1::ProjectBillingInfo.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    project_billing_info = {}

    update_project_billing_info_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Billing::V1::CloudBilling::Rest::ServiceStub.stub :transcode_update_project_billing_info_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_project_billing_info_client_stub do
        # Create client
        client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_project_billing_info({ name: name, project_billing_info: project_billing_info }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_project_billing_info name: name, project_billing_info: project_billing_info do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_project_billing_info ::Google::Cloud::Billing::V1::UpdateProjectBillingInfoRequest.new(name: name, project_billing_info: project_billing_info) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_project_billing_info({ name: name, project_billing_info: project_billing_info }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_project_billing_info(::Google::Cloud::Billing::V1::UpdateProjectBillingInfoRequest.new(name: name, project_billing_info: project_billing_info), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_project_billing_info_client_stub.call_count
      end
    end
  end

  def test_get_iam_policy
    # Create test objects.
    client_result = ::Google::Iam::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    options = {}

    get_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Billing::V1::CloudBilling::Rest::ServiceStub.stub :transcode_get_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_iam_policy({ resource: resource, options: options }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_iam_policy resource: resource, options: options do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_iam_policy({ resource: resource, options: options }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_iam_policy(::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_iam_policy_client_stub.call_count
      end
    end
  end

  def test_set_iam_policy
    # Create test objects.
    client_result = ::Google::Iam::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}
    update_mask = {}

    set_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Billing::V1::CloudBilling::Rest::ServiceStub.stub :transcode_set_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_iam_policy resource: resource, policy: policy, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_iam_policy(::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_iam_policy_client_stub.call_count
      end
    end
  end

  def test_test_iam_permissions
    # Create test objects.
    client_result = ::Google::Iam::V1::TestIamPermissionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Billing::V1::CloudBilling::Rest::ServiceStub.stub :transcode_test_iam_permissions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, test_iam_permissions_client_stub do
        # Create client
        client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.test_iam_permissions({ resource: resource, permissions: permissions }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.test_iam_permissions resource: resource, permissions: permissions do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.test_iam_permissions({ resource: resource, permissions: permissions }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.test_iam_permissions(::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, test_iam_permissions_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Billing::V1::CloudBilling::Rest::Client::Configuration, config
  end
end
