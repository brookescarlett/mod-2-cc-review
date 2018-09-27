class Party < ApplicationRecord
  belongs_to :clown

  # validates :host, presence: true
  # validates_associated :clown
  # validate :is_clown?

  def is_clown?
    if Clown.find_by(id: clown_id) == nil
      errors.add(:clown_id, "Choice must be a valid clown")
    end
  end
end
