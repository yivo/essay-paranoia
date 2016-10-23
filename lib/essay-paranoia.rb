# encoding: utf-8
# frozen_string_literal: true

require 'paranoia'
require 'essay'

module Essay
  class ModelFeatures
    def paranoid?
      active_record.respond_to?(:paranoia_column)
    end

    serialize do
      { acts_as_paranoid: paranoid? }
    end
  end

  class AttributeFeatures
    def paranoia_timestamp?
      active_record.try(:paranoia_column).try(:to_sym) == attribute.name
    end

    serialize do
      { is_paranoia_timestamp: paranoia_timestamp? }
    end
  end
end
