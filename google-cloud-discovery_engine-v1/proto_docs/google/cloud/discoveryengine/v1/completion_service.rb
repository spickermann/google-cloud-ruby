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


module Google
  module Cloud
    module DiscoveryEngine
      module V1
        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client#complete_query CompletionService.CompleteQuery}
        # method.
        # @!attribute [rw] data_store
        #   @return [::String]
        #     Required. The parent data store resource name for which the completion is
        #     performed, such as
        #     `projects/*/locations/global/collections/default_collection/dataStores/default_data_store`.
        # @!attribute [rw] query
        #   @return [::String]
        #     Required. The typeahead input used to fetch suggestions. Maximum length is
        #     128 characters.
        # @!attribute [rw] query_model
        #   @return [::String]
        #     Selects data model of query suggestions for serving. Currently supported
        #     values:
        #
        #     * `document` - Using suggestions generated from user-imported documents.
        #     * `search-history` - Using suggestions generated from the past history of
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchService::Client#search SearchService.Search}
        #     API calls. Do not use it when there is no traffic for Search API.
        #     * `user-event` - Using suggestions generated from user-imported search
        #     events.
        #     * `document-completable` - Using suggestions taken directly from
        #     user-imported document fields marked as completable.
        #
        #     Default values:
        #
        #     * `document` is the default model for regular dataStores.
        #     * `search-history` is the default model for
        #     [IndustryVertical.SITE_SEARCH][] dataStores.
        # @!attribute [rw] user_pseudo_id
        #   @return [::String]
        #     A unique identifier for tracking visitors. For example, this could be
        #     implemented with an HTTP cookie, which should be able to uniquely identify
        #     a visitor on a single device. This unique identifier should not change if
        #     the visitor logs in or out of the website.
        #
        #     This field should NOT have a fixed value such as `unknown_visitor`.
        #
        #     This should be the same identifier as
        #     {::Google::Cloud::DiscoveryEngine::V1::UserEvent#user_pseudo_id UserEvent.user_pseudo_id}
        #     and
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchRequest#user_pseudo_id SearchRequest.user_pseudo_id}.
        #
        #     The field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @!attribute [rw] include_tail_suggestions
        #   @return [::Boolean]
        #     Indicates if tail suggestions should be returned if there are no
        #     suggestions that match the full query. Even if set to true, if there are
        #     suggestions that match the full query, those are returned and no
        #     tail suggestions are returned.
        class CompleteQueryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client#complete_query CompletionService.CompleteQuery}
        # method.
        # @!attribute [rw] query_suggestions
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::CompleteQueryResponse::QuerySuggestion>]
        #     Results of the matched query suggestions. The result list is ordered and
        #     the first result is a top suggestion.
        # @!attribute [rw] tail_match_triggered
        #   @return [::Boolean]
        #     True if the returned suggestions are all tail suggestions.
        #
        #     For tail matching to be triggered, include_tail_suggestions in the request
        #     must be true and there must be no suggestions that match the full query.
        class CompleteQueryResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Suggestions as search queries.
          # @!attribute [rw] suggestion
          #   @return [::String]
          #     The suggestion for the query.
          class QuerySuggestion
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
