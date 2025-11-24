module Contentful
  class LotteryWinnerCategoryRepresenter < Representable::Decorator
    include Representable::JSON

    nested :fields do
      %w(
          name
        ).each do |property_name|
        nested property_name do
          property property_name, as: :en_us
        end
      end

    end

    nested :sys do
      property :contentful_id, as: :id
    end
  end
end
