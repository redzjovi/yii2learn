<?php

$params = require __DIR__ . '/params.php';
$db = require __DIR__ . '/db.php';

$config = [
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        'allowActions' => [
            'posts/*',
            'site/*',
        ],
    ],
    'id' => 'basic',
    'modules' => [
        'admin' => ['class' => 'mdm\admin\Module'],
        'post' => ['class' => 'app\modules\post\Post'],
    ],
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'components' => [
        'authManager' => ['class' => 'yii\rbac\DbManager'],
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'B35f8nsJwgfP6P0UlO6fGezGI0mcnfqe',
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'rules' => [
                'posts/view/<id>/<slug>' => 'posts/view',
            ],
            'showScriptName' => false,
        ],
        'user' => [
            'enableAutoLogin' => true,
            'identityClass' => 'app\models\User',
            'loginUrl' => ['admin/user/login'],
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => $db,
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
