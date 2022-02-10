# frozen_string_literal: true

class ProgressBadgeComponent < ViewComponent::Base
  attr_accessor :status
  def initialize(status:)
    @status = status
  end

  def badge_color
    case status
    when 'leetcode'
      'secondary'
    when 'interview'
      'info'
    when 'array'
      'success'
    end
  end
end
