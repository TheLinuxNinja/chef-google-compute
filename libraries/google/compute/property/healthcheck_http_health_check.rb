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
      # A class to manage data for HttpHealthCheck for health_check.
      class HealthCheckHttpHealthCheck
        include Comparable

        attr_reader :host
        attr_reader :request_path
        attr_reader :port
        attr_reader :port_name
        attr_reader :proxy_header

        def to_json(_arg = nil)
          {
            'host' => host,
            'requestPath' => request_path,
            'port' => port,
            'portName' => port_name,
            'proxyHeader' => proxy_header
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            host: host.to_s,
            request_path: request_path.to_s,
            port: port.to_s,
            port_name: port_name.to_s,
            proxy_header: proxy_header.to_s
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? HealthCheckHttpHealthCheck
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? HealthCheckHttpHealthCheck
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
            { self: host, other: other.host },
            { self: request_path, other: other.request_path },
            { self: port, other: other.port },
            { self: port_name, other: other.port_name },
            { self: proxy_header, other: other.proxy_header }
          ]
        end
      end

      # Manages a HealthCheckHttpHealthCheck nested object
      # Data is coming from the GCP API
      class HealthCheckHttpHealthCheckApi < HealthCheckHttpHealthCheck
        def initialize(args)
          @host = Google::Compute::Property::String.api_parse(args['host'])
          @request_path = Google::Compute::Property::String.api_parse(args['requestPath'])
          @port = Google::Compute::Property::Integer.api_parse(args['port'])
          @port_name = Google::Compute::Property::String.api_parse(args['portName'])
          @proxy_header = Google::Compute::Property::ProxyHeaderEnum.api_parse(args['proxyHeader'])
        end
      end

      # Manages a HealthCheckHttpHealthCheck nested object
      # Data is coming from the Chef catalog
      class HealthCheckHttpHealthCheckCatalog < HealthCheckHttpHealthCheck
        def initialize(args)
          @host = Google::Compute::Property::String.catalog_parse(args[:host])
          @request_path = Google::Compute::Property::String.catalog_parse(args[:request_path])
          @port = Google::Compute::Property::Integer.catalog_parse(args[:port])
          @port_name = Google::Compute::Property::String.catalog_parse(args[:port_name])
          @proxy_header =
            Google::Compute::Property::ProxyHeaderEnum.catalog_parse(args[:proxy_header])
        end
      end
    end

    module Property
      # A class to manage input to HttpHealthCheck for health_check.
      class HealthCheckHttpHealthCheck
        def self.coerce
          ->(x) { ::Google::Compute::Property::HealthCheckHttpHealthCheck.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? Data::HealthCheckHttpHealthCheck
          Data::HealthCheckHttpHealthCheckCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? Data::HealthCheckHttpHealthCheck
          Data::HealthCheckHttpHealthCheckApi.new(value)
        end
      end
    end
  end
end
