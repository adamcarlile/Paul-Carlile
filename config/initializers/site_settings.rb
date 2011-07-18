SITE_NAME = 'Paul Carlile, Restorative Principles in Practice'
ADMIN_EMAIL = 'paul@paulcarlile.com'
DEV_EMAIL = 'adam@benchmedia.com'
EMAIL_FROM = 'Paul Carile Education <website@paulcarlile.com>'

TWITTER_USER = 'paulcarlile'
TWITTER_PASS = ''

RECAPTCHA_PUBLIC_KEY = '6LfBRwoAAAAAAJJFmTPWaywUVP3aD_pjpM3bOQrM'
RECAPTCHA_PRIVATE_KEY = '6LfBRwoAAAAAADFrHBlQkd34eIrrzUt29XNTTpDk'
ENV['RECAPTCHA_PUBLIC_KEY'] = '6LfBRwoAAAAAAJJFmTPWaywUVP3aD_pjpM3bOQrM'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LfBRwoAAAAAADFrHBlQkd34eIrrzUt29XNTTpDk'

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address => "smtp.sendgrid.net",
    :domain => "paulcarlile.com",
    :user_name => "hello@adamcarlile.com",
    :password => ""
}
