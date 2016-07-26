# sendcloud_rails

Thanks for jorgemanrubia("https://github.com/jorgemanrubia/mailgun_rails")

*sendcloud_rails* is an Action Mailer adapter for using [Sendcloud](http://sendcloud.sohu.com/) in Rails apps. It uses the [Sendcloud HTTP API](http://sendcloud.sohu.com/doc/email_v2/code/#ruby) internally.

## Installing

In your `Gemfile`

```ruby
gem 'sendcloud_rails'
```

## Usage

To configure your sendcloud credentials place the following code in the corresponding environment file (`development.rb`, `production.rb`...)

```ruby
config.action_mailer.delivery_method = :sendcloud
config.action_mailer.mailgun_settings = {
		api_user: '<apiUser>',
		api_key: '<apiKey>',
		api_url: 'http://api.sendcloud.net/apiv2/mail/send'
}
```

Now you can send emails using plain Action Mailer:

```ruby
email = mail from: 'sender@email.com', to: 'receiver@email.com', subject: 'this is an email'
```

Pull requests are welcomed


