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

# [START confidentialcomputing_v1_generated_ConfidentialComputing_VerifyAttestation_sync]
require "google/cloud/confidential_computing/v1"

##
# Snippet for the verify_attestation call in the ConfidentialComputing service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::ConfidentialComputing::V1::ConfidentialComputing::Client#verify_attestation.
# It may require modification in order to execute successfully.
#
def verify_attestation
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ConfidentialComputing::V1::ConfidentialComputing::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ConfidentialComputing::V1::VerifyAttestationRequest.new

  # Call the verify_attestation method.
  result = client.verify_attestation request

  # The returned object is of type Google::Cloud::ConfidentialComputing::V1::VerifyAttestationResponse.
  p result
end
# [END confidentialcomputing_v1_generated_ConfidentialComputing_VerifyAttestation_sync]
