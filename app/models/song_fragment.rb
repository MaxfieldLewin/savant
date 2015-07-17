class SongFragment < ActiveRecord::Base
  validates :song_id, :offset_start, :offset_end, presence: true
  validate :fragment_interval_available

  belongs_to :song,
    class_name: "Song",
    foreign_key: :song_id,
    primary_key: :id,
    inverse_of: :song_fragments

  has_one: :annotation,
    class_name: "Annotation",
    foreign_key: :song_fragment_id,
    primary_key: :id,
    inverse_of: :song_fragment,
    dependent: :destroy

  def fragment_interval_available
    other_fragments = self.song.song_fragments.where.not(id: self.id)

    other_fragments.each do |frag|
      if (self.offset_start <= frag.offset_end && self.offset_start >= frag.offset_start) ||
          (self.offset_start == frag.offset_start || self.offset_start == frag.offset_end)
        errors.add(:offset_start, "Can't overlap with a pre-existing annotation")
      end

      if (self.offset_end <= frag.offset_end && self.offset_end >= frag.offset_start)||
          (self.offset_end == frag.offset_start || self.offset_end == frag.offset_end)
        errors.add(:offset_end, "Can't overlap with a pre-existing annotation")
      end
    end
  end
end
