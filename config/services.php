<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, Mandrill, and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],
    
    'facebook' => [
        'client_id' => '211404272580662',
        'client_secret' => '2730bb1279675bc6ce019021c83cd83a',
        'redirect' => 'http://localhost/gistler/callback/facebook',
    ],

    'google' => [
        'client_id'     => '201997717698-l3higetlt4qvj5g54569cdns3hfi1pqo.apps.googleusercontent.com',
        'client_secret' => '2f23s627KQUhO5vKKFff-8RM',
        'redirect'      => 'http://localhost/gistler/callback/google'
    ],
    'twitter' => [
    'client_id' => '5L3wzjvKxmzVdhOCmozTZyk42',
    'client_secret' => 'BSI1sZ8MOcxNqlFSr9uRoQfQPTyUgUfGKr7XcfwQr7Ci4aINpL',
    'redirect' => 'http://localhost/gistler/callback/twitter',
    ],

];
