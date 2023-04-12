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


module Google
  module Cloud
    module SecurityCenter
      module V1
        # Kubernetes-related attributes.
        # @!attribute [rw] pods
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Pod>]
        #     Kubernetes Pods associated with the finding. This field will contain Pod
        #     records for each container that is owned by a Pod.
        # @!attribute [rw] nodes
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Node>]
        #     Provides Kubernetes Node information.
        # @!attribute [rw] node_pools
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::NodePool>]
        #     GKE Node Pools associated with the finding. This field will
        #     contain NodePool information for each Node, when it is available.
        # @!attribute [rw] roles
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Role>]
        #     Provides Kubernetes role information for findings that involve
        #     Roles or ClusterRoles.
        # @!attribute [rw] bindings
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Binding>]
        #     Provides Kubernetes role binding information for findings that involve
        #     RoleBindings or ClusterRoleBindings.
        # @!attribute [rw] access_reviews
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::AccessReview>]
        #     Provides information on any Kubernetes access reviews (i.e. privilege
        #     checks) relevant to the finding.
        class Kubernetes
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Kubernetes Pod.
          # @!attribute [rw] ns
          #   @return [::String]
          #     Kubernetes Pod namespace.
          # @!attribute [rw] name
          #   @return [::String]
          #     Kubernetes Pod name.
          # @!attribute [rw] labels
          #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Label>]
          #     Pod labels.  For Kubernetes containers, these are applied to the
          #     container.
          # @!attribute [rw] containers
          #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Container>]
          #     Pod containers associated with this finding, if any.
          class Pod
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Kubernetes Nodes associated with the finding.
          # @!attribute [rw] name
          #   @return [::String]
          #     Full Resource name of the Compute Engine VM running the
          #     cluster node.
          class Node
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Provides GKE Node Pool information.
          # @!attribute [rw] name
          #   @return [::String]
          #     Kubernetes Node pool name.
          # @!attribute [rw] nodes
          #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Node>]
          #     Nodes associated with the finding.
          class NodePool
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Kubernetes Role or ClusterRole.
          # @!attribute [rw] kind
          #   @return [::Google::Cloud::SecurityCenter::V1::Kubernetes::Role::Kind]
          #     Role type.
          # @!attribute [rw] ns
          #   @return [::String]
          #     Role namespace.
          # @!attribute [rw] name
          #   @return [::String]
          #     Role name.
          class Role
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Types of Kubernetes roles.
            module Kind
              # Role type is not specified.
              KIND_UNSPECIFIED = 0

              # Kubernetes Role.
              ROLE = 1

              # Kubernetes ClusterRole.
              CLUSTER_ROLE = 2
            end
          end

          # Represents a Kubernetes RoleBinding or ClusterRoleBinding.
          # @!attribute [rw] ns
          #   @return [::String]
          #     Namespace for binding.
          # @!attribute [rw] name
          #   @return [::String]
          #     Name for binding.
          # @!attribute [rw] role
          #   @return [::Google::Cloud::SecurityCenter::V1::Kubernetes::Role]
          #     The Role or ClusterRole referenced by the binding.
          # @!attribute [rw] subjects
          #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Subject>]
          #     Represents one or more subjects that are bound to the role. Not always
          #     available for PATCH requests.
          class Binding
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a Kubernetes Subject.
          # @!attribute [rw] kind
          #   @return [::Google::Cloud::SecurityCenter::V1::Kubernetes::Subject::AuthType]
          #     Authentication type for subject.
          # @!attribute [rw] ns
          #   @return [::String]
          #     Namespace for subject.
          # @!attribute [rw] name
          #   @return [::String]
          #     Name for subject.
          class Subject
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Auth types that can be used for Subject's kind field.
            module AuthType
              # Authentication is not specified.
              AUTH_TYPE_UNSPECIFIED = 0

              # User with valid certificate.
              USER = 1

              # Users managed by Kubernetes API with credentials stored as Secrets.
              SERVICEACCOUNT = 2

              # Collection of users.
              GROUP = 3
            end
          end

          # Conveys information about a Kubernetes access review (e.g. kubectl auth
          # can-i ...) that was involved in a finding.
          # @!attribute [rw] group
          #   @return [::String]
          #     Group is the API Group of the Resource. "*" means all.
          # @!attribute [rw] ns
          #   @return [::String]
          #     Namespace of the action being requested. Currently, there is no
          #     distinction between no namespace and all namespaces.  Both
          #     are represented by "" (empty).
          # @!attribute [rw] name
          #   @return [::String]
          #     Name is the name of the resource being requested. Empty means all.
          # @!attribute [rw] resource
          #   @return [::String]
          #     Resource is the optional resource type requested. "*" means all.
          # @!attribute [rw] subresource
          #   @return [::String]
          #     Subresource is the optional subresource type.
          # @!attribute [rw] verb
          #   @return [::String]
          #     Verb is a Kubernetes resource API verb, like: get, list, watch, create,
          #     update, delete, proxy. "*" means all.
          # @!attribute [rw] version
          #   @return [::String]
          #     Version is the API Version of the Resource. "*" means all.
          class AccessReview
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
