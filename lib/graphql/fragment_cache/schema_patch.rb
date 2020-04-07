# frozen_string_literal: true

require "digest/sha1"

module GraphQL
  module FragmentCache
    # Patches GraphQL::Schema to support fragment cache
    module SchemaPatch
      def schema_cache_key
        @schema_cache_key ||= Digest::SHA1.hexdigest(to_definition)
      end
    end
  end
end
