class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    validates :image, presence: true
    before_create :ban_word

    def ban_word
        self.content.gsub!("spoiler", "")
    end
end
