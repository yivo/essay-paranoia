require 'essay'

module Essay
  class ModelFeatures
    def paranoid?
      model_class.respond_to?(:paranoia_column)
    end

    serialize do
      { acts_as_paranoid: paranoid? }
    end
  end

  class AttributeRoles
    def paranoia_timestamp?
      model_class.try(:paranoia_column).try(:to_s) == attribute_name.to_s
    end

    serialize do
      { is_paranoia_timestamp: paranoia_timestamp? }
    end
  end
end