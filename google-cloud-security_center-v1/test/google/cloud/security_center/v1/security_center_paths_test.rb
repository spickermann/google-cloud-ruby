# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/security_center/v1/security_center"

class ::Google::Cloud::SecurityCenter::V1::SecurityCenter::ClientPathsTest < Minitest::Test
  def test_big_query_export_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.big_query_export_path organization: "value0", export: "value1"
      assert_equal "organizations/value0/bigQueryExports/value1", path

      path = client.big_query_export_path folder: "value0", export: "value1"
      assert_equal "folders/value0/bigQueryExports/value1", path

      path = client.big_query_export_path project: "value0", export: "value1"
      assert_equal "projects/value0/bigQueryExports/value1", path
    end
  end

  def test_effective_security_health_analytics_custom_module_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.effective_security_health_analytics_custom_module_path organization: "value0", effective_custom_module: "value1"
      assert_equal "organizations/value0/securityHealthAnalyticsSettings/effectiveCustomModules/value1", path

      path = client.effective_security_health_analytics_custom_module_path folder: "value0", effective_custom_module: "value1"
      assert_equal "folders/value0/securityHealthAnalyticsSettings/effectiveCustomModules/value1", path

      path = client.effective_security_health_analytics_custom_module_path project: "value0", effective_custom_module: "value1"
      assert_equal "projects/value0/securityHealthAnalyticsSettings/effectiveCustomModules/value1", path
    end
  end

  def test_external_system_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.external_system_path organization: "value0", source: "value1", finding: "value2", externalsystem: "value3"
      assert_equal "organizations/value0/sources/value1/findings/value2/externalSystems/value3", path

      path = client.external_system_path folder: "value0", source: "value1", finding: "value2", externalsystem: "value3"
      assert_equal "folders/value0/sources/value1/findings/value2/externalSystems/value3", path

      path = client.external_system_path project: "value0", source: "value1", finding: "value2", externalsystem: "value3"
      assert_equal "projects/value0/sources/value1/findings/value2/externalSystems/value3", path
    end
  end

  def test_finding_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.finding_path organization: "value0", source: "value1", finding: "value2"
      assert_equal "organizations/value0/sources/value1/findings/value2", path

      path = client.finding_path folder: "value0", source: "value1", finding: "value2"
      assert_equal "folders/value0/sources/value1/findings/value2", path

      path = client.finding_path project: "value0", source: "value1", finding: "value2"
      assert_equal "projects/value0/sources/value1/findings/value2", path
    end
  end

  def test_folder_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.folder_path folder: "value0"
      assert_equal "folders/value0", path
    end
  end

  def test_mute_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.mute_config_path organization: "value0", mute_config: "value1"
      assert_equal "organizations/value0/muteConfigs/value1", path

      path = client.mute_config_path folder: "value0", mute_config: "value1"
      assert_equal "folders/value0/muteConfigs/value1", path

      path = client.mute_config_path project: "value0", mute_config: "value1"
      assert_equal "projects/value0/muteConfigs/value1", path
    end
  end

  def test_notification_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.notification_config_path organization: "value0", notification_config: "value1"
      assert_equal "organizations/value0/notificationConfigs/value1", path

      path = client.notification_config_path folder: "value0", notification_config: "value1"
      assert_equal "folders/value0/notificationConfigs/value1", path

      path = client.notification_config_path project: "value0", notification_config: "value1"
      assert_equal "projects/value0/notificationConfigs/value1", path
    end
  end

  def test_organization_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_path organization: "value0"
      assert_equal "organizations/value0", path
    end
  end

  def test_organization_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_settings_path organization: "value0"
      assert_equal "organizations/value0/organizationSettings", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end

  def test_security_health_analytics_custom_module_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.security_health_analytics_custom_module_path organization: "value0", custom_module: "value1"
      assert_equal "organizations/value0/securityHealthAnalyticsSettings/customModules/value1", path

      path = client.security_health_analytics_custom_module_path folder: "value0", custom_module: "value1"
      assert_equal "folders/value0/securityHealthAnalyticsSettings/customModules/value1", path

      path = client.security_health_analytics_custom_module_path project: "value0", custom_module: "value1"
      assert_equal "projects/value0/securityHealthAnalyticsSettings/customModules/value1", path
    end
  end

  def test_security_health_analytics_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.security_health_analytics_settings_path organization: "value0"
      assert_equal "organizations/value0/securityHealthAnalyticsSettings", path

      path = client.security_health_analytics_settings_path folder: "value0"
      assert_equal "folders/value0/securityHealthAnalyticsSettings", path

      path = client.security_health_analytics_settings_path project: "value0"
      assert_equal "projects/value0/securityHealthAnalyticsSettings", path
    end
  end

  def test_security_marks_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.security_marks_path organization: "value0", asset: "value1"
      assert_equal "organizations/value0/assets/value1/securityMarks", path

      path = client.security_marks_path organization: "value0", source: "value1", finding: "value2"
      assert_equal "organizations/value0/sources/value1/findings/value2/securityMarks", path

      path = client.security_marks_path folder: "value0", asset: "value1"
      assert_equal "folders/value0/assets/value1/securityMarks", path

      path = client.security_marks_path project: "value0", asset: "value1"
      assert_equal "projects/value0/assets/value1/securityMarks", path

      path = client.security_marks_path folder: "value0", source: "value1", finding: "value2"
      assert_equal "folders/value0/sources/value1/findings/value2/securityMarks", path

      path = client.security_marks_path project: "value0", source: "value1", finding: "value2"
      assert_equal "projects/value0/sources/value1/findings/value2/securityMarks", path
    end
  end

  def test_source_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.source_path organization: "value0", source: "value1"
      assert_equal "organizations/value0/sources/value1", path

      path = client.source_path folder: "value0", source: "value1"
      assert_equal "folders/value0/sources/value1", path

      path = client.source_path project: "value0", source: "value1"
      assert_equal "projects/value0/sources/value1", path
    end
  end

  def test_topic_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.topic_path project: "value0", topic: "value1"
      assert_equal "projects/value0/topics/value1", path
    end
  end
end
