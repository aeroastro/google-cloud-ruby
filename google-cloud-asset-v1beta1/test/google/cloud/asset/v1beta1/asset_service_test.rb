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

require "simplecov"
require "minitest/autorun"

require "gapic/grpc/service_stub"

require "google/cloud/asset/v1beta1/asset_service_pb"
require "google/cloud/asset/v1beta1/asset_service_services_pb"
require "google/cloud/asset/v1beta1/asset_service"

class Google::Cloud::Asset::V1beta1::AssetService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args
      @call_rpc_count += 1

      @requests << @block&.call(*args)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_export_assets
    # Create GRPC objects.
    grpc_response = Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    read_time = {}
    asset_types = ["hello world"]
    content_type = :CONTENT_TYPE_UNSPECIFIED
    output_config = {}

    export_assets_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :export_assets, name
      assert_kind_of Google::Cloud::Asset::V1beta1::ExportAssetsRequest, request
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::Timestamp), request.read_time
      assert_equal ["hello world"], request.asset_types
      assert_equal :CONTENT_TYPE_UNSPECIFIED, request.content_type
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Asset::V1beta1::OutputConfig), request.output_config
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, export_assets_client_stub do
      # Create client
      client = Google::Cloud::Asset::V1beta1::AssetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.export_assets({ parent: parent, read_time: read_time, asset_types: asset_types, content_type: content_type, output_config: output_config }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.export_assets parent: parent, read_time: read_time, asset_types: asset_types, content_type: content_type, output_config: output_config do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.export_assets Google::Cloud::Asset::V1beta1::ExportAssetsRequest.new(parent: parent, read_time: read_time, asset_types: asset_types, content_type: content_type, output_config: output_config) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.export_assets({ parent: parent, read_time: read_time, asset_types: asset_types, content_type: content_type, output_config: output_config }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.export_assets Google::Cloud::Asset::V1beta1::ExportAssetsRequest.new(parent: parent, read_time: read_time, asset_types: asset_types, content_type: content_type, output_config: output_config), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, export_assets_client_stub.call_rpc_count
    end
  end

  def test_batch_get_assets_history
    # Create GRPC objects.
    grpc_response = Google::Cloud::Asset::V1beta1::BatchGetAssetsHistoryResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    asset_names = ["hello world"]
    content_type = :CONTENT_TYPE_UNSPECIFIED
    read_time_window = {}

    batch_get_assets_history_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_get_assets_history, name
      assert_kind_of Google::Cloud::Asset::V1beta1::BatchGetAssetsHistoryRequest, request
      assert_equal "hello world", request.parent
      assert_equal ["hello world"], request.asset_names
      assert_equal :CONTENT_TYPE_UNSPECIFIED, request.content_type
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Asset::V1beta1::TimeWindow), request.read_time_window
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_get_assets_history_client_stub do
      # Create client
      client = Google::Cloud::Asset::V1beta1::AssetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_get_assets_history({ parent: parent, asset_names: asset_names, content_type: content_type, read_time_window: read_time_window }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_get_assets_history parent: parent, asset_names: asset_names, content_type: content_type, read_time_window: read_time_window do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_get_assets_history Google::Cloud::Asset::V1beta1::BatchGetAssetsHistoryRequest.new(parent: parent, asset_names: asset_names, content_type: content_type, read_time_window: read_time_window) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_get_assets_history({ parent: parent, asset_names: asset_names, content_type: content_type, read_time_window: read_time_window }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_get_assets_history Google::Cloud::Asset::V1beta1::BatchGetAssetsHistoryRequest.new(parent: parent, asset_names: asset_names, content_type: content_type, read_time_window: read_time_window), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_get_assets_history_client_stub.call_rpc_count
    end
  end
end
