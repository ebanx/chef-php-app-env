name              "php-app-env"
maintainer        "Ariel Patschiki"
maintainer_email  "arielpts@me.com"
license           "Apache 2.0"
description       "PHP application env vars file"
version           "1.0.0"

depends "deploy"

%w{ ubuntu }.each do |os|
  supports os
end

recipe "php-app-env", "Create the PHP application env vars file"