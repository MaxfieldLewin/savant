class SongFragment < ActiveRecord::Base
  validates :song_id, :offset_start, :offset_end, presence: true
  validate :fragment_interval_available

  belongs_to :song,
    class_name: "Song",
    foreign_key: :song_id,
    primary_key: :id

  def fragment_interval_available
    other_fragments = self.song.song_fragments.where.not(id: self.id)

    other_fragments.each do |frag|
      if !(self.offset_start <= frag.offset_end && self.offset_end >= frag.offset_start)
        errors.add(:offset_start, "Can't overlap with a pre-existing annotation")
      end
    end
  end

end
