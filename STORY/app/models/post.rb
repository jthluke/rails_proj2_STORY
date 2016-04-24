class Post < ActiveRecord::Base
    acts_as_votable
    validates :content, presence: true
    belongs_to :story
    belongs_to :user

    def score
      self.get_upvotes.size - self.get_downvotes.size
    end

end
