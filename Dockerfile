FROM nextcloud
RUN echo "<?php\n\
$CONFIG = [\n\
\'objectstore\' => [
\'class\' => \'OC\\Files\\ObjectStore\\S3\',\n\
\'arguments\' => [\n\
\'bucket\' => \'qodex-nc-storage\',\n\
\'autocreate\' => true,\n\
\'key\' => \'RATS9DK5S33IBVGYUIH6\',\n\
\'secret\' => \'ZSDUtbPWOQ0jpRgcqAwNApWqNRwN9sIF6fR43Vk5\',\n\
\'hostname\' => \'qodex-nc-storage.eu-central-1.linodeobjects.com\',\n\
\'port\' => 443,\n\
\'use_ssl\' => true,\n\
\'region\' => \'eu-central-1\',\n\
// required for some non Amazon S3 implementations\n\
\'use_path_style\'=> false, ],\n\
],\n\
];\n\"
>> /var/www/html/config/storage.config.php

