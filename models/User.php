<?php

namespace app\models;

class User extends \mdm\admin\models\User implements \yii\web\IdentityInterface
{
    public function rules()
    {
        return [
            ['username', 'required'],
            ['username', 'unique'],

            ['email', 'required'],
            ['email', 'unique'],
        ];
    }
}
