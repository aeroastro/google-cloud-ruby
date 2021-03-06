# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/layouts.proto

require 'google/protobuf'

require 'google/monitoring/dashboard/v1/widget_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/dashboard/v1/layouts.proto", :syntax => :proto3) do
    add_message "google.monitoring.dashboard.v1.GridLayout" do
      optional :columns, :int64, 1
      repeated :widgets, :message, 2, "google.monitoring.dashboard.v1.Widget"
    end
    add_message "google.monitoring.dashboard.v1.RowLayout" do
      repeated :rows, :message, 1, "google.monitoring.dashboard.v1.RowLayout.Row"
    end
    add_message "google.monitoring.dashboard.v1.RowLayout.Row" do
      optional :weight, :int64, 1
      repeated :widgets, :message, 2, "google.monitoring.dashboard.v1.Widget"
    end
    add_message "google.monitoring.dashboard.v1.ColumnLayout" do
      repeated :columns, :message, 1, "google.monitoring.dashboard.v1.ColumnLayout.Column"
    end
    add_message "google.monitoring.dashboard.v1.ColumnLayout.Column" do
      optional :weight, :int64, 1
      repeated :widgets, :message, 2, "google.monitoring.dashboard.v1.Widget"
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module Dashboard
        module V1
          GridLayout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.GridLayout").msgclass
          RowLayout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.RowLayout").msgclass
          RowLayout::Row = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.RowLayout.Row").msgclass
          ColumnLayout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.ColumnLayout").msgclass
          ColumnLayout::Column = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.ColumnLayout.Column").msgclass
        end
      end
    end
  end
end
