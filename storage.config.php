<? php
//please note that the setup below is configured for Linode Object Storage, please consult your provider for detailed implementation instructions.
$CONFIG = array(
    'objectstore' => array(
        'class' => '\\OC\\Files\\ObjectStore\\S3',
        'arguments' => array(
                'bucket'   => '<BUCKET NAME>',
                'key'      => '<KEY>',
                'secret'   => '<PRIVATE KEY>',
                'use_ssl'  => true,
                'hostname' => '<REGION URL>',
        ),
    ),
);
