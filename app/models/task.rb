class Task < ActiveRecord::Base

  acts_as_sortable
  mount_uploader :attachment, AttachmentUploader

  belongs_to :category

  validates :name, presence: true

  scope :undone, -> { where(completed: false) }


  acts_as_sortable do |config|
    config[:append] = true
  end
end
