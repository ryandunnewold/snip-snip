# Apple configuration:

APNS.host =
  case Rails.env
  when 'production'
    'gateway.push.apple.com'
  else
    'gateway.sandbox.push.apple.com'
  end

APNS.pem  = ENV['APNS_PEM_PATH']
APNS.pass = ENV['APNS_PEM_PASSWORD']

# Android configuration:
# https://code.google.com/apis/console/

GCM.key = ENV['GCM_SERVER_KEY']

