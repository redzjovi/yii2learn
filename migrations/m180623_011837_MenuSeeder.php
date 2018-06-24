<?php

use mdm\admin\models\Menu;
use yii\db\Migration;

/**
 * Class m180623_011837_MenuSeeder
 */
class m180623_011837_MenuSeeder extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $menus = [
            [
                'name' => 'Backend Menu',
                'route' => null,
                'order' => null,
                'children' => [
                    [
                        'name' => 'Backend',
                        'route' => '/admin/default/index',
                        'order' => null,
                        'children' => [
                            [
                                'name' => 'Admin',
                                'route' => '/admin/default/index',
                                'order' => 1,
                                'children' => [
                                    [
                                        'name' => 'Route',
                                        'route' => '/admin/route/index',
                                        'order' => 1,
                                    ],
                                    [
                                        'name' => 'Permission',
                                        'route' => '/admin/permission/index',
                                        'order' => 2,
                                    ],
                                    [
                                        'name' => 'Menu',
                                        'route' => '/admin/menu/index',
                                        'order' => 3,
                                    ],
                                    [
                                        'name' => 'Role',
                                        'route' => '/admin/role/index',
                                        'order' => 4,
                                    ],
                                    [
                                        'name' => 'Assignment',
                                        'route' => '/admin/assignment/index',
                                        'order' => 5,
                                    ],
                                    [
                                        'name' => 'User',
                                        'route' => '/admin/user/index',
                                        'order' => 6,
                                    ],
                                ],
                            ],
                            [
                                'name' => 'Modules',
                                'route' => null,
                                'order' => 2,
                                'children' => [
                                    [
                                        'name' => 'Post',
                                        'route' => '/post/backend/post/index',
                                        'order' => 1,
                                    ],
                                ],
                            ],
                        ],
                    ],
                ],
            ],
        ];

        $this->menuInsert($menus);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $model = new Menu;
        $model->deleteAll();
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180623_011837_MenuSeeder cannot be reverted.\n";

        return false;
    }
    */

    public function menuInsert($menus, $parent = null)
    {
       if (is_array($menus))
       {
           foreach ($menus as $menu)
           {
               $model = new Menu;
               $model->setAttributes($menu);
               $model->parent = $parent;
               $model->save();

               if (isset($menu['children']))
               {
                   $this->menuInsert($menu['children'], $model->id);
               }
           }
       }
    }
}
