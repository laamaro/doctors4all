class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :treatment

  validate :is_between_parent_period
  validates :date, :user, :treatment, presence: true

  private

  def is_between_parent_period
    unless date.between?(self.treatment.start_date, self.treatment.end_date)
      errors.add(:base, 'Falha ao marcar a consulta! Escolha uma data disponível!')
    end
  end
end
