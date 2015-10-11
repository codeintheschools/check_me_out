class CheckOutNotificationJob < ActiveJob::Base
  queue_as :default

  def perform(check_out)
    slack_webhook_url = ENV['SLACK_WEBHOOK_URL']

    unless slack_webhook_url.blank?
      message = "#{check_out.name} #{check_out.pending? ? 'checked out' : 'returned'} #{check_out.quantity} #{check_out.thing.name} (#{check_out.thing.available_quantity} remaining)"

      notifier = Slack::Notifier.new(slack_webhook_url, username: 'Check Me Out!')
      notifier.ping message, icon_emoji: check_out.pending? ? ':outbox_tray:' : ':inbox_tray:'
    end
  end
end
