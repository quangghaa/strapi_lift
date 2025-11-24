module Contentful
  class LotteryWinnerCategory
    include StrapiDocumentConnected
    attr_accessor :name

    api_path "/api/lottery-winner-categories"

    contentful_content_type "lotteries"
  end
end
