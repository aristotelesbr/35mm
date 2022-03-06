# frozen_string_literal: true

class LogIn
  include Voltage.call

  attr_reader :form

  def initialize(form)
    @from = form
  end

  def call
    return emit(:error) unless form.valid?

    # 1.
  end
end
