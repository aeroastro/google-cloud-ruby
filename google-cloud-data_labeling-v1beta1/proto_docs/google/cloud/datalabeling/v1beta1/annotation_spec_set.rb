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
    module DataLabeling
      module V1beta1
        # An AnnotationSpecSet is a collection of label definitions. For example, in
        # image classification tasks, you define a set of possible labels for images as
        # an AnnotationSpecSet. An AnnotationSpecSet is immutable upon creation.
        # @!attribute [rw] name
        #   @return [::String]
        #     Output only. The AnnotationSpecSet resource name in the following format:
        #
        #     "projects/<var>\\{project_id}</var>/annotationSpecSets/<var>\\{annotation_spec_set_id}</var>"
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name for AnnotationSpecSet that you define when you
        #     create it. Maximum of 64 characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. User-provided description of the annotation specification set.
        #     The description can be up to 10,000 characters long.
        # @!attribute [rw] annotation_specs
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::AnnotationSpec>]
        #     Required. The array of AnnotationSpecs that you define when you create the
        #     AnnotationSpecSet. These are the possible labels for the labeling task.
        # @!attribute [rw] blocking_resources
        #   @return [::Array<::String>]
        #     Output only. The names of any related resources that are blocking changes
        #     to the annotation spec set.
        class AnnotationSpecSet
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images
        # are labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and
        # an AnnotationSpec for `cat`.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the AnnotationSpec. Maximum of 64 characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. User-provided description of the annotation specification.
        #     The description can be up to 10,000 characters long.
        class AnnotationSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end