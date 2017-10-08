class Checklist < ApplicationRecord
  require 'date'
  has_many :questions
  belongs_to :user
  after_create :add_questions

  def add_questions
    questions = [
      "Drain water from garbage cans, gutters, pool covers, coolers, toys, flower pots, or any other containers where water has collected.",
      "Discard old tires, drums, bottles, cans, pots and pans, broken appliances, and other items that aren't being used.",
      "Empty and clean birdbaths and pet bowls.",
      "Protect boats and vehicles from rain with tarps so they don't accumulate water.",
      "Maintain the water balance (pool chemistry) of swimming pools. Empty plastic swimming pools when not in use.",
      "Repair leaky pipes, outdoor faucets, and faulty septic systems. Don't let runoff water from air conditioners collect in shady areas."
    ]
    questions.each { |question| self.questions.create(question: question, checked: false) }
  end

  def current?
    current_checklist_created = DateTime.new(2017, 10, 7)
    return self.created_at > current_checklist_created
  end
end
