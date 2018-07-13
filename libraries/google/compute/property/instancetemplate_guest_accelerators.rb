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
      # A class to manage data for GuestAccelerators for instance_template.
      class InstaTemplGuestAccel
        include Comparable

        attr_reader :accelerator_count
        attr_reader :accelerator_type

        def to_json(_arg = nil)
          {
            'acceleratorCount' => accelerator_count,
            'acceleratorType' => accelerator_type
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            accelerator_count: accelerator_count.to_s,
            accelerator_type: accelerator_type.to_s
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? InstaTemplGuestAccel
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? InstaTemplGuestAccel
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
            { self: accelerator_count, other: other.accelerator_count },
            { self: accelerator_type, other: other.accelerator_type }
          ]
        end
      end

      # Manages a InstaTemplGuestAccel nested object
      # Data is coming from the GCP API
      class InstaTemplGuestAccelApi < InstaTemplGuestAccel
        def initialize(args)
          @accelerator_count =
            Google::Compute::Property::Integer.api_parse(args['acceleratorCount'])
          @accelerator_type = Google::Compute::Property::String.api_parse(args['acceleratorType'])
        end
      end

      # Manages a InstaTemplGuestAccel nested object
      # Data is coming from the Chef catalog
      class InstaTemplGuestAccelCatalog < InstaTemplGuestAccel
        def initialize(args)
          @accelerator_count =
            Google::Compute::Property::Integer.catalog_parse(args[:accelerator_count])
          @accelerator_type =
            Google::Compute::Property::String.catalog_parse(args[:accelerator_type])
        end
      end
    end

    module Property
      # A class to manage input to GuestAccelerators for instance_template.
      class InstaTemplGuestAccel
        def self.coerce
          ->(x) { ::Google::Compute::Property::InstaTemplGuestAccel.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? Data::InstaTemplGuestAccel
          Data::InstaTemplGuestAccelCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? Data::InstaTemplGuestAccel
          Data::InstaTemplGuestAccelApi.new(value)
        end
      end

      # A Chef property that holds an integer
      class InstaTemplGuestAccelArray < Google::Compute::Property::Array
        def self.coerce
          ->(x) { ::Google::Compute::Property::InstaTemplGuestAccelArray.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return InstaTemplGuestAccel.catalog_parse(value) \
            unless value.is_a?(::Array)
          value.map { |v| InstaTemplGuestAccel.catalog_parse(v) }
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return InstaTemplGuestAccel.api_parse(value) \
            unless value.is_a?(::Array)
          value.map { |v| InstaTemplGuestAccel.api_parse(v) }
        end
      end
    end
  end
end
