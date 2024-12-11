class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attached :image

  validates :content, presence: true, unless: :was_image_attached?

  def was_image_attached?
    self.image.attached?
  end
end
