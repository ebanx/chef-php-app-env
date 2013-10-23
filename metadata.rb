name              "php-app-env"
maintainer        "EBANX TECNOLOGIA DA INFORMACAO LTDA"
maintainer_email  "ariel@ebanx.com"
license           "Apache 2.0"
description       "PHP Application ENV Vars"
version           "1.0.0"

depends "deploy"

%w{ ubuntu }.each do |os|
  supports os
end

recipe "php-app-env", "Create the PHP application env vars file"