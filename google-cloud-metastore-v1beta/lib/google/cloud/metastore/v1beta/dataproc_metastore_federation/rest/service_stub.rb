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

require "google/cloud/metastore/v1beta/metastore_federation_pb"

module Google
  module Cloud
    module Metastore
      module V1beta
        module DataprocMetastoreFederation
          module Rest
            ##
            # REST service stub for the DataprocMetastoreFederation service.
            # Service stub contains baseline method implementations
            # including transcoding, making the REST call, and deserialing the response.
            #
            class ServiceStub
              def initialize endpoint:, credentials:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials,
                                                             numeric_enums: true,
                                                             raise_faraday_errors: false
              end

              ##
              # Baseline implementation for the list_federations REST call
              #
              # @param request_pb [::Google::Cloud::Metastore::V1beta::ListFederationsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Metastore::V1beta::ListFederationsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Metastore::V1beta::ListFederationsResponse]
              #   A result object deserialized from the server's reply
              def list_federations request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_list_federations_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Metastore::V1beta::ListFederationsResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the get_federation REST call
              #
              # @param request_pb [::Google::Cloud::Metastore::V1beta::GetFederationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Metastore::V1beta::Federation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Metastore::V1beta::Federation]
              #   A result object deserialized from the server's reply
              def get_federation request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_get_federation_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Metastore::V1beta::Federation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the create_federation REST call
              #
              # @param request_pb [::Google::Cloud::Metastore::V1beta::CreateFederationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Longrunning::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Longrunning::Operation]
              #   A result object deserialized from the server's reply
              def create_federation request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_create_federation_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the update_federation REST call
              #
              # @param request_pb [::Google::Cloud::Metastore::V1beta::UpdateFederationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Longrunning::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Longrunning::Operation]
              #   A result object deserialized from the server's reply
              def update_federation request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_update_federation_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the delete_federation REST call
              #
              # @param request_pb [::Google::Cloud::Metastore::V1beta::DeleteFederationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Longrunning::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Longrunning::Operation]
              #   A result object deserialized from the server's reply
              def delete_federation request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_delete_federation_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list_federations REST call
              #
              # @param request_pb [::Google::Cloud::Metastore::V1beta::ListFederationsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_list_federations_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta/{parent}/federations",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get_federation REST call
              #
              # @param request_pb [::Google::Cloud::Metastore::V1beta::GetFederationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_get_federation_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta/{name}",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/locations/[^/]+/federations/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the create_federation REST call
              #
              # @param request_pb [::Google::Cloud::Metastore::V1beta::CreateFederationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_create_federation_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1beta/{parent}/federations",
                                                          body: "federation",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the update_federation REST call
              #
              # @param request_pb [::Google::Cloud::Metastore::V1beta::UpdateFederationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_update_federation_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :patch,
                                                          uri_template: "/v1beta/{federation.name}",
                                                          body: "federation",
                                                          matches: [
                                                            ["federation.name", %r{^projects/[^/]+/locations/[^/]+/federations/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the delete_federation REST call
              #
              # @param request_pb [::Google::Cloud::Metastore::V1beta::DeleteFederationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_delete_federation_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :delete,
                                                          uri_template: "/v1beta/{name}",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/locations/[^/]+/federations/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end
            end
          end
        end
      end
    end
  end
end
