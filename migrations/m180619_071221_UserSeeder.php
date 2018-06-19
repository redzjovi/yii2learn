<?php

use app\models\User;
use yii\db\Migration;

/**
 * Class m180619_071221_UserSeeder
 */
class m180619_071221_UserSeeder extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $users = [
            [
                'username' => 'admin',
                'email' => 'admin@mailinator.com',
                'password' => 'admin',
            ],
        ];

        foreach ($users as $user)
        {
            $model = new User;
            $model->generateAuthKey();
            $model->setAttributes($user);
            $model->setPassword($user['password']);
            $model->save();
        }
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $model = new User;
        $model->deleteAll();
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180619_071221_UserSeeder cannot be reverted.\n";

        return false;
    }
    */
}
