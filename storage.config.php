<?php
$CONFIG = [
'objectstore' => [
'class' => 'OC\\Files\\ObjectStore\\S3',
'arguments' => [
'bucket' => 'bucketname',
'autocreate' => true,
'key' => 'AAAAAAAAAAAAAAAAAAA',
'secret' => 'AaAAaaaAAA11aAAAAAaa11aA+aAaAA1aAaaAAaAAAAA',
'hostname' => 'fra1.digitaloceanspaces.com',
'port' => 443,
'use_ssl' => true,
'region' => 'fra1',
// required for some non Amazon S3 implementations
'use_path_style'=> false, ],
],
];
