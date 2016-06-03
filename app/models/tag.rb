class Tag < ActiveRecord::Base
  validates :word, presence: true, uniqueness: true

  validate :starts_with_octothorpe

  def starts_with_octothorpe
    if self.word && word[0] != "0"
      errors.add(
        :hash_tag,
        "must be the first value in the word!"
      )
    end
  end
end
