# == Schema Information
#
# Table name: annotations
#
#  id                 :integer          not null, primary key
#  song_fragment_id   :integer          not null
#  contents           :text             not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Annotation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
