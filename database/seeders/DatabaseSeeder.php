<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::create([
            'name' => 'Syaiful Iqbal',
            'username' => 'Ballsky',
            'email' => 'syaifulqbal@gmail.com',
            'password' => bcrypt('12345')
        ]);
        // User::create([
        //     'name' => 'Achmad Fahdil',
        //     'email' => 'achmadfahdil@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);
        Category::create([
            'name' => 'Football',
            'slug' => 'football'
        ]);
        Category::create([
            'name' => 'Racing',
            'slug' => 'racing'
        ]);

        Post::factory(30)->create();
        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi ipsa officiis at et dolor asperiores eligendi, iste unde repellat quae quaerat alias illo corporis',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi ipsa officiis at et dolor asperiores eligendi, iste unde repellat quae quaerat alias illo corporis numquam provident, ratione natus hic veritatis non id. Excepturi omnis quaerat animi? Expedita porro sequi magnam recusandae voluptas harum laboriosam, placeat blanditiis ex exercitationem, adipisci dolor. Ad aut atque laboriosam temporibus repellendus veritatis fugit totam maiores aliquam dicta, vel alias error illum labore eos sed accusamus officiis ab, eligendi mollitia odio. Ullam in repudiandae sunt esse dolor quas, quis illo natus consequatur vero autem? Molestiae cupiditate minus voluptatem laboriosam, at velit itaque rem et veniam architecto?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi ipsa officiis at et dolor asperiores eligendi, iste unde repellat quae quaerat alias illo corporis',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi ipsa officiis at et dolor asperiores eligendi, iste unde repellat quae quaerat alias illo corporis numquam provident, ratione natus hic veritatis non id. Excepturi omnis quaerat animi? Expedita porro sequi magnam recusandae voluptas harum laboriosam, placeat blanditiis ex exercitationem, adipisci dolor. Ad aut atque laboriosam temporibus repellendus veritatis fugit totam maiores aliquam dicta, vel alias error illum labore eos sed accusamus officiis ab, eligendi mollitia odio. Ullam in repudiandae sunt esse dolor quas, quis illo natus consequatur vero autem? Molestiae cupiditate minus voluptatem laboriosam, at velit itaque rem et veniam architecto?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi ipsa officiis at et dolor asperiores eligendi, iste unde repellat quae quaerat alias illo corporis',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi ipsa officiis at et dolor asperiores eligendi, iste unde repellat quae quaerat alias illo corporis numquam provident, ratione natus hic veritatis non id. Excepturi omnis quaerat animi? Expedita porro sequi magnam recusandae voluptas harum laboriosam, placeat blanditiis ex exercitationem, adipisci dolor. Ad aut atque laboriosam temporibus repellendus veritatis fugit totam maiores aliquam dicta, vel alias error illum labore eos sed accusamus officiis ab, eligendi mollitia odio. Ullam in repudiandae sunt esse dolor quas, quis illo natus consequatur vero autem? Molestiae cupiditate minus voluptatem laboriosam, at velit itaque rem et veniam architecto?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi ipsa officiis at et dolor asperiores eligendi, iste unde repellat quae quaerat alias illo corporis',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi ipsa officiis at et dolor asperiores eligendi, iste unde repellat quae quaerat alias illo corporis numquam provident, ratione natus hic veritatis non id. Excepturi omnis quaerat animi? Expedita porro sequi magnam recusandae voluptas harum laboriosam, placeat blanditiis ex exercitationem, adipisci dolor. Ad aut atque laboriosam temporibus repellendus veritatis fugit totam maiores aliquam dicta, vel alias error illum labore eos sed accusamus officiis ab, eligendi mollitia odio. Ullam in repudiandae sunt esse dolor quas, quis illo natus consequatur vero autem? Molestiae cupiditate minus voluptatem laboriosam, at velit itaque rem et veniam architecto?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
    }
}
