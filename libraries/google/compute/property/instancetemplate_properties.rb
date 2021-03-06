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

module Google
  module Compute
    module Data
      # A class to manage data for Properties for instance_template.
      class InstanceTemplateProperties
        include Comparable

        attr_reader :can_ip_forward
        attr_reader :description
        attr_reader :disks
        attr_reader :machine_type
        attr_reader :metadata
        attr_reader :guest_accelerators
        attr_reader :network_interfaces
        attr_reader :scheduling
        attr_reader :service_accounts
        attr_reader :tags

        def to_json(_arg = nil)
          {
            'canIpForward' => can_ip_forward,
            'description' => description,
            'disks' => disks,
            'machineType' => machine_type,
            'metadata' => metadata,
            'guestAccelerators' => guest_accelerators,
            'networkInterfaces' => network_interfaces,
            'scheduling' => scheduling,
            'serviceAccounts' => service_accounts,
            'tags' => tags
          }.reject { |_k, v| v.nil? }.to_json
        end

        # rubocop:disable Metrics/AbcSize
        # rubocop:disable Metrics/MethodLength
        def to_s
          {
            can_ip_forward: can_ip_forward.to_s,
            description: description.to_s,
            disks: ['[',
                    disks.map(&:to_json).join(', '),
                    ']'].join(' '),
            machine_type: machine_type.to_s,
            metadata: metadata.to_s,
            guest_accelerators: ['[',
                                 guest_accelerators.map(&:to_json).join(', '),
                                 ']'].join(' '),
            network_interfaces: ['[',
                                 network_interfaces.map(&:to_json).join(', '),
                                 ']'].join(' '),
            scheduling: scheduling.to_s,
            service_accounts: ['[',
                               service_accounts.map(&:to_json).join(', '),
                               ']'].join(' '),
            tags: tags.to_s
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end
        # rubocop:enable Metrics/MethodLength
        # rubocop:enable Metrics/AbcSize

        def ==(other)
          return false unless other.is_a? InstanceTemplateProperties
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? InstanceTemplateProperties
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
            { self: can_ip_forward, other: other.can_ip_forward },
            { self: description, other: other.description },
            { self: disks, other: other.disks },
            { self: machine_type, other: other.machine_type },
            { self: metadata, other: other.metadata },
            { self: guest_accelerators, other: other.guest_accelerators },
            { self: network_interfaces, other: other.network_interfaces },
            { self: scheduling, other: other.scheduling },
            { self: service_accounts, other: other.service_accounts },
            { self: tags, other: other.tags }
          ]
        end
      end

      # Manages a InstanceTemplateProperties nested object
      # Data is coming from the GCP API
      class InstanceTemplatePropertiesApi < InstanceTemplateProperties
        # rubocop:disable Metrics/MethodLength
        def initialize(args)
          @can_ip_forward = Google::Compute::Property::Boolean.api_parse(args['canIpForward'])
          @description = Google::Compute::Property::String.api_parse(args['description'])
          @disks = Google::Compute::Property::InstanceTemplateDisksArray.api_parse(args['disks'])
          @machine_type =
            Google::Compute::Property::MachineTypeNameRef.api_parse(args['machineType'])
          @metadata = Google::Compute::Property::NameValues.api_parse(args['metadata'])
          @guest_accelerators =
            Google::Compute::Property::InstanceTemplateGuestAcceleratorsArray.api_parse(
              args['guestAccelerators']
            )
          @network_interfaces =
            Google::Compute::Property::InstanceTemplateNetworkInterfacesArray.api_parse(
              args['networkInterfaces']
            )
          @scheduling =
            Google::Compute::Property::InstanceTemplateScheduling.api_parse(args['scheduling'])
          @service_accounts =
            Google::Compute::Property::InstanceTemplateServiceAccountsArray.api_parse(
              args['serviceAccounts']
            )
          @tags = Google::Compute::Property::InstanceTemplateTags.api_parse(args['tags'])
        end
        # rubocop:enable Metrics/MethodLength
      end

      # Manages a InstanceTemplateProperties nested object
      # Data is coming from the Chef catalog
      class InstanceTemplatePropertiesCatalog < InstanceTemplateProperties
        # rubocop:disable Metrics/MethodLength
        def initialize(args)
          @can_ip_forward = Google::Compute::Property::Boolean.catalog_parse(args[:can_ip_forward])
          @description = Google::Compute::Property::String.catalog_parse(args[:description])
          @disks = Google::Compute::Property::InstanceTemplateDisksArray.catalog_parse(args[:disks])
          @machine_type =
            Google::Compute::Property::MachineTypeNameRef.catalog_parse(args[:machine_type])
          @metadata = Google::Compute::Property::NameValues.catalog_parse(args[:metadata])
          @guest_accelerators =
            Google::Compute::Property::InstanceTemplateGuestAcceleratorsArray.catalog_parse(
              args[:guest_accelerators]
            )
          @network_interfaces =
            Google::Compute::Property::InstanceTemplateNetworkInterfacesArray.catalog_parse(
              args[:network_interfaces]
            )
          @scheduling =
            Google::Compute::Property::InstanceTemplateScheduling.catalog_parse(args[:scheduling])
          @service_accounts =
            Google::Compute::Property::InstanceTemplateServiceAccountsArray.catalog_parse(
              args[:service_accounts]
            )
          @tags = Google::Compute::Property::InstanceTemplateTags.catalog_parse(args[:tags])
        end
        # rubocop:enable Metrics/MethodLength
      end
    end

    module Property
      # A class to manage input to Properties for instance_template.
      class InstanceTemplateProperties
        def self.coerce
          ->(x) { ::Google::Compute::Property::InstanceTemplateProperties.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? Data::InstanceTemplateProperties
          Data::InstanceTemplatePropertiesCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? Data::InstanceTemplateProperties
          Data::InstanceTemplatePropertiesApi.new(value)
        end
      end
    end
  end
end
