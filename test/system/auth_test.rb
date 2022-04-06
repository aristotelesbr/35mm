# frozen_string_literal: true

require 'application_system_test_case'
require 'active_job/test_helper'

class AuthTest < ApplicationSystemTestCase
  include ActiveJob::TestHelper

  def click_email_link(label, mail = ActionMailer::Base.deliveries.last)
    html = Nokogiri(mail.html_part.body.to_s)
    link = html.css('a').find { |tag| tag.text == label }

    refute_nil link, "Couldn't find a link with label #{label.inspect}"
    refute_nil link['href'], "Link didn't have :href attribute"

    visit link['href']
  end

  test 'signs up to the website' do
    visit root_path
    click_on 'Create your account'
    fill_in "What's your email?", with: 'john@35mm.com'
    click_on 'Create your account'

    assert_selector 'p', text: 'Please check your email and click the link we just sent.'

    perform_enqueued_jobs

    click_email_link('Verify your email')

    assert_equal root_path, current_path

    assert_selector 'span.username', text: User.last.username

    # TODO: assert that user are on set username screen
    # TODO: choose username
    # TODO: redirect to the home screen with a navaigation bar that shows the username.
  end
end
