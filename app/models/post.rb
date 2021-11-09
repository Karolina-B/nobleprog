class Post < ApplicationRecord
    belongs_to :user

    def content_keywords(count)
        content.split.sample(count)
    end
end
