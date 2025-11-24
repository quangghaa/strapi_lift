module Contentful
  class AssetRepresenter < Representable::Decorator
    include Representable::JSON

    nested :sys do
      property :contentful_id, as: :id
      nested :space do
        nested :sys do
          property :space_id, as: :id
        end
      end
    end

    nested :fields do
      %w(
          title 
          description 
        ).each do |property_name|
        nested property_name do
          property property_name, as: :en_us
        end

        nested :file do
          nested :en_us do
            property :url
          end
        end
      end
    end
  end
end
