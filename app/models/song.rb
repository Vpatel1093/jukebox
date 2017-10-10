class Song < ApplicationRecord
  serialize :song_label

  validates :song_name, presence: true, length: {maximum: 255}
  validates :song_order, presence: true
  validate :song_label_validation
  validates :song_duration, presence: true, length: {maximum: 255}
  validates_presence_of :album_id

  belongs_to :album

  LABELS = ['explicit','upbeat','slow']


  # validate length and name of label
  def song_label_validation
    unless song_label == nil
      song_label.each do |label|
        errors.add(:song_label, "\"#{label}\" is either too long or invalid") unless label.length < 255 && LABELS.include?(label)
      end
    end
  end
end
