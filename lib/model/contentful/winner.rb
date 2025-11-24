module Contentful
  class Winner
    include StrapiDocumentConnected
    attr_accessor :win_number
    attr_accessor :name
    attr_accessor :prize_amount
    attr_accessor :draw_date
    attr_accessor :winning_numbers
    attr_accessor :sold_in
    attr_accessor :address
    attr_accessor :province
    attr_accessor :image
    attr_accessor :draw_game

    link_asset  source: :image_link, target: :image
    link_object source: :draw_game_link, target: :draw_game

    api_path "/api/winners"

    contentful_content_type "winners"
  end
end
