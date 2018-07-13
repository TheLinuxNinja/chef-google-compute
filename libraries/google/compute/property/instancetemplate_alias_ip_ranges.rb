# Copyright 2018 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'google/compute/property/array'
module Google
  module Compute
    module Data
      # A class to manage data for AliasIpRanges for instance_template.
      class InstTempAliaIpRang
        include Comparable

        attr_reader :ip_cidr_range
        attr_reader :subnetwork_range_name

        def to_json(_arg = nil)
          {
            'ipCidrRange' => ip_cidr_range,
            'subnetworkRangeName' => subnetwork_range_name
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            ip_cidr_range: ip_cidr_range.to_s,
            subnetwork_range_name: subnetwork_range_name.to_s
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? InstTempAliaIpRang
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? InstTempAliaIpRang
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            result = compare[:self] <=> compare[:other]
            return result unless result.zero?
          end
          0
        end

        def inspect
          to_json
        end

        private

        def compare_fields(other)
          [
            { self: ip_cidr_range, other: other.ip_cidr_range },
            { self: subnetwork_range_name, other: other.subnetwork_range_name }
          ]
        end
      end

      # Manages a InstTempAliaIpRang nested object
      # Data is coming from the GCP API
      class InstTempAliaIpRangApi < InstTempAliaIpRang
        def initialize(args)
          @ip_cidr_range = Google::Compute::Property::String.api_parse(args['ipCidrRange'])
          @subnetwork_range_name =
            Google::Compute::Property::String.api_parse(args['subnetworkRangeName'])
        end
      end

      # Manages a InstTempAliaIpRang nested object
      # Data is coming from the Chef catalog
      class InstTempAliaIpRangCatalog < InstTempAliaIpRang
        def initialize(args)
          @ip_cidr_range = Google::Compute::Property::String.catalog_parse(args[:ip_cidr_range])
          @subnetwork_range_name =
            Google::Compute::Property::String.catalog_parse(args[:subnetwork_range_name])
        end
      end
    end

    module Property
      # A class to manage input to AliasIpRanges for instance_template.
      class InstTempAliaIpRang
        def self.coerce
          ->(x) { ::Google::Compute::Property::InstTempAliaIpRang.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? Data::InstTempAliaIpRang
          Data::InstTempAliaIpRangCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? Data::InstTempAliaIpRang
          Data::InstTempAliaIpRangApi.new(value)
        end
      end

      # A Chef property that holds an integer
      class InstTempAliaIpRangArray < Google::Compute::Property::Array
        def self.coerce
          ->(x) { ::Google::Compute::Property::InstTempAliaIpRangArray.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return InstTempAliaIpRang.catalog_parse(value) \
            unless value.is_a?(::Array)
          value.map { |v| InstTempAliaIpRang.catalog_parse(v) }
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return InstTempAliaIpRang.api_parse(value) \
            unless value.is_a?(::Array)
          value.map { |v| InstTempAliaIpRang.api_parse(v) }
        end
      end
    end
  end
end
