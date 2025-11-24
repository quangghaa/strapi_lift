require_relative 'entry_link_representer'
require_relative 'asset_link_representer'

module Contentful
  class WinnerRepresenter < Representable::Decorator
    include Representable::JSON

    nested :fields do
      %w(
          win_number
          name
          prize_amount
          draw_date
          winning_numbers
          sold_in
          address
          province
        ).each do |property_name|
        nested property_name do
          property property_name, as: :en_us
        end
      end

      nested :image do
        property :image_link,
                 decorator: Contentful::AssetLinkRepresenter,
                 class: Contentful::AssetLink,
                 as: :en_us
      end

      nested :lottery_name do
        property :draw_game_link,
                 decorator: Contentful::EntryLinkRepresenter,
                 class: Contentful::LotteryWinnerCategoryLink,
                 as: :en_us
      end
    end

    nested :sys do
      property :contentful_id, as: :id
    end
  end
end
