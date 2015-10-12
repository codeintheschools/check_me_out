class CheckOutNotificationJob < ActiveJob::Base
  queue_as :default

  def perform(check_out)
    slack_webhook_url = ENV['SLACK_WEBHOOK_URL']

    return if slack_webhook_url.blank?

    msg = "#{check_out.name} #{check_out.pending? ? 'checked out' : 'returned'}"
    msg += " #{check_out.quantity} #{check_out.thing.name} (#{check_out.thing.available_quantity} remaining)"

    notifier = Slack::Notifier.new(slack_webhook_url, username: 'Check Me Out!', icon_emoji: ':memo:')
    notifier.ping msg
  end
end
