<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Syaiful Iqbal",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sit eum aspernatur maxime architecto cumque recusandae quos illum laboriosam quibusdam. Temporibus error doloremque optio ex perferendis a impedit autem tenetur corrupti exercitationem praesentium quas facere harum dolorem esse quod mollitia hic libero voluptate provident atque minima, excepturi animi. Quidem earum ut esse cupiditate optio voluptates. Quasi magni perferendis laudantium reiciendis alias nam rem quod eligendi odio, dignissimos assumenda corrupti non maxime, repellendus corporis mollitia ullam quidem harum. Autem odio id illum."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Achmad Fahdil",
            "body" => "
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae libero architecto perspiciatis. Officiis dolor vitae iste odit recusandae velit veniam hic nam suscipit, in ut ab nihil. Magnam sequi distinctio culpa at excepturi ducimus eum recusandae quas quibusdam, blanditiis iste ipsa aliquam, possimus quae odit quaerat, dignissimos alias ex sint quo! Nulla dicta assumenda tempora nihil eum cum ut doloribus doloremque qui deleniti omnis veritatis quisquam, voluptatum quidem velit rem necessitatibus praesentium pariatur ex libero, voluptates at perferendis fugiat. Odit facere reprehenderit ab quaerat deserunt suscipit esse delectus quisquam itaque, at magni reiciendis dignissimos perferendis nulla error eligendi nostrum provident."
        ],
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
