# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START websecurityscanner_v1_generated_WebSecurityScanner_UpdateScanConfig_sync]
require "google/cloud/web_security_scanner/v1"

##
# Snippet for the update_scan_config call in the WebSecurityScanner service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::WebSecurityScanner::V1::WebSecurityScanner::Client#update_scan_config.
# It may require modification in order to execute successfully.
#
def update_scan_config
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::WebSecurityScanner::V1::WebSecurityScanner::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::WebSecurityScanner::V1::UpdateScanConfigRequest.new

  # Call the update_scan_config method.
  result = client.update_scan_config request

  # The returned object is of type Google::Cloud::WebSecurityScanner::V1::ScanConfig.
  p result
end
# [END websecurityscanner_v1_generated_WebSecurityScanner_UpdateScanConfig_sync]
