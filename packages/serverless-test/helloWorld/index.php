<?php

use Ramsey\Uuid\Uuid;

function main(array $args) : array
{
    $uuid = Uuid::uuid4();
    
    return [
        'body' => [
            'uuid' => $uuid->__toString(),
            'some_env' => getenv('LOREM'),
            'args' => $args,
        ],
    ];
}