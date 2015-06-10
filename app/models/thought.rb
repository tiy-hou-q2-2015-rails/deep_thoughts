class Thought < ActiveRecord::Base

  validates :content,
    presence: true,
    length: {maximum: 255},
    uniqueness: {message: "You already deep thoughted that"}

  mount_uploader :photo, PhotoUploader

  acts_as_taggable
end
