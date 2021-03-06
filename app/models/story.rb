class Story < ActiveRecord::Base
    acts_as_votable

    validates :beginning, presence: true
    belongs_to :user
    has_many :posts

    def score
      self.get_upvotes.size - self.get_downvotes.size
    end

end
