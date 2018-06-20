<?php

use app\models\Role;
use yii\db\Migration;

/**
 * Class m180619_084052_RoleSeeder
 */
class m180619_084052_RoleSeeder extends Migration
{
    protected $auth;
    protected $route;

    public function __construct()
    {
        $this->auth = \Yii::$app->authManager;
        $this->route = new \app\models\Route;
    }

    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $roles = [
            Role::ADMIN,
        ];

        foreach ($roles as $role)
        {
            $role = $this->auth->createRole($role);
            $this->auth->add($role);

            if ($routesAssigned = $this->route->available)
            {
                foreach ($routesAssigned as $routeAssigned)
                {
                    $permission = $this->auth->getPermission($routeAssigned);
                    $this->auth->addChild($role, $permission);
                }
            }
        }
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->auth->removeAllRoles();
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180619_084052_RoleSeeder cannot be reverted.\n";

        return false;
    }
    */
}
