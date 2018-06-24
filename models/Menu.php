<?php

namespace app\models;

use Yii;

class Menu extends \mdm\admin\models\Menu
{
    public static function findOneByName($name)
    {
        return self::find()->where(['name' => $name])->one();
    }
}
