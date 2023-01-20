# == Schema Information
#
# Table name: resturant_dishes
#
#  id           :bigint           not null, primary key
#  attachments  :text
#  price        :float
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  resturant_id :integer
#
class ResturantDish < ApplicationRecord
  mount_uploaders :attachments, AttachmentUploader
  serialize :attachments, JSON

  belongs_to :resturant
end
