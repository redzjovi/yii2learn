<?php

use app\models\User;
use yii\db\Migration;

/**
 * Class m180620_053128_UserSeeder
 */
class m180620_053128_UserSeeder extends Migration
{
    protected $auth;

    public function __construct()
    {
        $this->auth = \Yii::$app->authManager;
    }

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
                'role' => \app\models\Role::ADMIN,
            ],
        ];

        foreach ($users as $user)
        {
            $model = new User;
            $model->generateAuthKey();
            $model->setAttributes($user);
            $model->setPassword($user['password']);
            $model->save();

            $role = $this->auth->getRole($user['role']);
            $userId = $model->id;
            $this->auth->assign($role, $userId);
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
        echo "m180620_053128_UserSeeder cannot be reverted.\n";

        return false;
    }
    */
}
