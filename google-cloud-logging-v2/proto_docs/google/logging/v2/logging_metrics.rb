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


module Google
  module Cloud
    module Logging
      module V2
        # Describes a logs-based metric. The value of the metric is the number of log
        # entries that match a logs filter in a given time interval.
        #
        # Logs-based metrics can also be used to extract values from logs and create a
        # distribution of the values. The distribution records the statistics of the
        # extracted values along with an optional histogram of the values as specified
        # by the bucket options.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The client-assigned metric identifier.
        #     Examples: `"error_count"`, `"nginx/requests"`.
        #
        #     Metric identifiers are limited to 100 characters and can include only the
        #     following characters: `A-Z`, `a-z`, `0-9`, and the special characters
        #     `_-.,+!*',()%/`. The forward-slash character (`/`) denotes a hierarchy of
        #     name pieces, and it cannot be the first character of the name.
        #
        #     This field is the `[METRIC_ID]` part of a metric resource name in the
        #     format "projects/[PROJECT_ID]/metrics/[METRIC_ID]". Example: If the
        #     resource name of a metric is
        #     `"projects/my-project/metrics/nginx%2Frequests"`, this field's value is
        #     `"nginx/requests"`.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A description of this metric, which is used in documentation.
        #     The maximum length of the description is 8000 characters.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Required. An [advanced logs
        #     filter](https://cloud.google.com/logging/docs/view/advanced_filters) which
        #     is used to match log entries. Example:
        #
        #         "resource.type=gae_app AND severity>=ERROR"
        #
        #     The maximum length of the filter is 20000 characters.
        # @!attribute [rw] bucket_name
        #   @return [::String]
        #     Optional. The resource name of the Log Bucket that owns the Log Metric.
        #     Only Log Buckets in projects are supported. The bucket has to be in the
        #     same project as the metric.
        #
        #     For example:
        #
        #       `projects/my-project/locations/global/buckets/my-bucket`
        #
        #     If empty, then the Log Metric is considered a non-Bucket Log Metric.
        # @!attribute [rw] disabled
        #   @return [::Boolean]
        #     Optional. If set to True, then this metric is disabled and it does not
        #     generate any points.
        # @!attribute [rw] metric_descriptor
        #   @return [::Google::Api::MetricDescriptor]
        #     Optional. The metric descriptor associated with the logs-based metric.
        #     If unspecified, it uses a default metric descriptor with a DELTA metric
        #     kind, INT64 value type, with no labels and a unit of "1". Such a metric
        #     counts the number of log entries matching the `filter` expression.
        #
        #     The `name`, `type`, and `description` fields in the `metric_descriptor`
        #     are output only, and is constructed using the `name` and `description`
        #     field in the LogMetric.
        #
        #     To create a logs-based metric that records a distribution of log values, a
        #     DELTA metric kind with a DISTRIBUTION value type must be used along with
        #     a `value_extractor` expression in the LogMetric.
        #
        #     Each label in the metric descriptor must have a matching label
        #     name as the key and an extractor expression as the value in the
        #     `label_extractors` map.
        #
        #     The `metric_kind` and `value_type` fields in the `metric_descriptor` cannot
        #     be updated once initially configured. New labels can be added in the
        #     `metric_descriptor`, but existing labels cannot be modified except for
        #     their description.
        # @!attribute [rw] value_extractor
        #   @return [::String]
        #     Optional. A `value_extractor` is required when using a distribution
        #     logs-based metric to extract the values to record from a log entry.
        #     Two functions are supported for value extraction: `EXTRACT(field)` or
        #     `REGEXP_EXTRACT(field, regex)`. The arguments are:
        #
        #       1. field: The name of the log entry field from which the value is to be
        #          extracted.
        #       2. regex: A regular expression using the Google RE2 syntax
        #          (https://github.com/google/re2/wiki/Syntax) with a single capture
        #          group to extract data from the specified log entry field. The value
        #          of the field is converted to a string before applying the regex.
        #          It is an error to specify a regex that does not include exactly one
        #          capture group.
        #
        #     The result of the extraction must be convertible to a double type, as the
        #     distribution always records double values. If either the extraction or
        #     the conversion to double fails, then those values are not recorded in the
        #     distribution.
        #
        #     Example: `REGEXP_EXTRACT(jsonPayload.request, ".*quantity=(\d+).*")`
        # @!attribute [rw] label_extractors
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. A map from a label key string to an extractor expression which is
        #     used to extract data from a log entry field and assign as the label value.
        #     Each label key specified in the LabelDescriptor must have an associated
        #     extractor expression in this map. The syntax of the extractor expression
        #     is the same as for the `value_extractor` field.
        #
        #     The extracted value is converted to the type defined in the label
        #     descriptor. If either the extraction or the type conversion fails,
        #     the label will have a default value. The default value for a string
        #     label is an empty string, for an integer label its 0, and for a boolean
        #     label its `false`.
        #
        #     Note that there are upper bounds on the maximum number of labels and the
        #     number of active time series that are allowed in a project.
        # @!attribute [rw] bucket_options
        #   @return [::Google::Api::Distribution::BucketOptions]
        #     Optional. The `bucket_options` are required when the logs-based metric is
        #     using a DISTRIBUTION value type and it describes the bucket boundaries
        #     used to create a histogram of the extracted values.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation timestamp of the metric.
        #
        #     This field may not be present for older metrics.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last update timestamp of the metric.
        #
        #     This field may not be present for older metrics.
        # @!attribute [rw] version
        #   @return [::Google::Cloud::Logging::V2::LogMetric::ApiVersion]
        #     Deprecated. The API version that created or updated this metric.
        #     The v2 format is used by default and cannot be changed.
        class LogMetric
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelExtractorsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Logging API version.
          module ApiVersion
            # Logging API v2.
            V2 = 0

            # Logging API v1.
            V1 = 1
          end
        end

        # The parameters to ListLogMetrics.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the project containing the metrics:
        #
        #         "projects/[PROJECT_ID]"
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. If present, then retrieve the next batch of results from the
        #     preceding call to this method. `pageToken` must be the value of
        #     `nextPageToken` from the previous response. The values of other method
        #     parameters should be identical to those in the previous call.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of results to return from this request.
        #     Non-positive values are ignored. The presence of `nextPageToken` in the
        #     response indicates that more results might be available.
        class ListLogMetricsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Result returned from ListLogMetrics.
        # @!attribute [rw] metrics
        #   @return [::Array<::Google::Cloud::Logging::V2::LogMetric>]
        #     A list of logs-based metrics.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there might be more results than appear in this response, then
        #     `nextPageToken` is included. To get the next set of results, call this
        #     method again using the value of `nextPageToken` as `pageToken`.
        class ListLogMetricsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The parameters to GetLogMetric.
        # @!attribute [rw] metric_name
        #   @return [::String]
        #     Required. The resource name of the desired metric:
        #
        #         "projects/[PROJECT_ID]/metrics/[METRIC_ID]"
        class GetLogMetricRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The parameters to CreateLogMetric.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the project in which to create the metric:
        #
        #         "projects/[PROJECT_ID]"
        #
        #     The new metric must be provided in the request.
        # @!attribute [rw] metric
        #   @return [::Google::Cloud::Logging::V2::LogMetric]
        #     Required. The new logs-based metric, which must not have an identifier that
        #     already exists.
        class CreateLogMetricRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The parameters to UpdateLogMetric.
        # @!attribute [rw] metric_name
        #   @return [::String]
        #     Required. The resource name of the metric to update:
        #
        #         "projects/[PROJECT_ID]/metrics/[METRIC_ID]"
        #
        #     The updated metric must be provided in the request and it's
        #     `name` field must be the same as `[METRIC_ID]` If the metric
        #     does not exist in `[PROJECT_ID]`, then a new metric is created.
        # @!attribute [rw] metric
        #   @return [::Google::Cloud::Logging::V2::LogMetric]
        #     Required. The updated metric.
        class UpdateLogMetricRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The parameters to DeleteLogMetric.
        # @!attribute [rw] metric_name
        #   @return [::String]
        #     Required. The resource name of the metric to delete:
        #
        #         "projects/[PROJECT_ID]/metrics/[METRIC_ID]"
        class DeleteLogMetricRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
