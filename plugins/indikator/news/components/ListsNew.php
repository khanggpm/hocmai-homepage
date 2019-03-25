<?php namespace Indikator\News\Components;

use Cms\Classes\ComponentBase;
use Indikator\News\Models\Posts as NewPosts;
use Input;
class ListsNew extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'ListsNew ',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public $list_new;
    public $list_news;
    public $events;
    public $total_new;
    
    public function onRun() {
        $cat_id = $this->param('cat_id');

        $list_new = NewPosts::where('category_id', $cat_id)->orderBy('created_at', 'desc')->get();
        // $list_new = NewPosts::where('category_id', $cat_id)->paginate(5, 1);

        $big_new = NewPosts::where('category_id', $cat_id)->where('hot_news', 1)->orderBy('created_at', 'desc')->take(3)->get();
        $diff = $list_new->diff($big_new);
        $listNews = $diff->toArray();
        $this->list_new = $this->page['list_new'] =  $diff->all();
        // $this->list_news = $this->page['list_news'] =  $listNews;
        $newListNews = [];
        $arr = [];
        foreach($listNews as $list) {
            $newListNews = [
                'id' => $list['id'],
                'title' => $list['title'],
                'slug' => $list['slug'],
                'introductory' => $list['introductory'],
                'content' => $list['content'],
                'published_at' => $list['published_at'],
                'published_at' => $list['published_at'],
                'status' => $list['status'],
                'created_at' => $list['created_at'],
                'image' => $list['image'],
                'category_id' => $list['category_id'],
                'category_id' => $list['category_id'],
                'tag' => $list['tags'],
                'tagPosts' => explode(',',$list['tags']),
                'tagArr' => 
                    explode(',', $this->vn_to_str($list['tags'])
                ),
            ];
            $arr[] = $newListNews;
        }

        // $this->list_news = $this->page['list_news'] =  $arr;

        $events = NewPosts::where('category_id', 3)->orderBy('created_at', 'desc')->take(3)->get();
        
        $this->events = $this->page['events'] = $events;

        $total_new = $this->total_new = $this->page['total_new'] = count($arr);

        $limit = $this->limit = $this->page['limit'] = 10;

        $totalPages = ceil( $total_new/ $limit );
        $this->totalPages = $this->page['totalPages'] = $totalPages;
        $page = ! empty( $_GET['page'] ) ? (int) $_GET['page'] : 1;
        $offset = ($page - 1) * $limit;
        if( $offset < 0 ) $offset = 0;

        $this->list_news = $this->page['list_news'] = array_slice( $arr, $offset, $limit );
        
    }

    /**
     * Process pagination in news
        @$array : array news
        @$offset 
        @$per_page 
     */
    public function onPagi() 
    {
        $cat_id = Input::get('cat_id');
        $page = Input::get('page');

        $list_new = NewPosts::where('category_id', $cat_id)->orderBy('created_at', 'desc')->take(100)->get();

        $big_new = NewPosts::where('category_id', $cat_id)->where('hot_news', 1)->orderBy('created_at', 'desc')->take(3)->get();
        $diff = $list_new->diff($big_new);
        $listNews = $diff->toArray();
        $this->list_new = $this->page['list_new'] =  $diff->all();
        // $this->list_news = $this->page['list_news'] =  $listNews;
        $newListNews = [];
        $arr = [];
        foreach($listNews as $list) {
            $newListNews = [
                'id' => $list['id'],
                'title' => $list['title'],
                'slug' => $list['slug'],
                'introductory' => $list['introductory'],
                'content' => $list['content'],
                'published_at' => $list['published_at'],
                'published_at' => $list['published_at'],
                'status' => $list['status'],
                'created_at' => $list['created_at'],
                'image' => $list['image'],
                'category_id' => $list['category_id'],
                'category_id' => $list['category_id'],
                'tag' => $list['tags'],
                'tagPosts' => explode(',',$list['tags']),
                'tagArr' => 
                    explode(',', $this->vn_to_str($list['tags'])
                ),
            ];
            $arr[] = $newListNews;
        }

        // $this->list_news = $this->page['list_news'] =  $arr;

        $events = NewPosts::where('category_id', 3)->orderBy('created_at', 'desc')->take(3)->get();
        
        $this->events = $this->page['events'] = $events;

        $total_new = $this->total_new = $this->page['total_new'] = count($arr);

        $limit = $this->limit = $this->page['limit'] = 10;

        $totalPages = ceil( $total_new/ $limit );
        $this->totalPages = $this->page['totalPages'] = $totalPages;
        $offset = ($page - 1) * $limit;
        if( $offset < 0 ) $offset = 0;
        $list_new_page = $this->page['list_new_page'] = array_slice( $arr, $offset, $limit );
        return [
            'list_new_page' => $list_new_page
        ];
    }

    private function fillter($id_cat, &$news) {
        $big_new = NewPosts::where('category_id', $id_cat)->orderBy('created_at', 'desc')->take(3)->get();
    }

    private function vn_to_str ($str){

        $unicode = array(

            'a'=>'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ',

            'd'=>'đ',

            'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',

            'i'=>'í|ì|ỉ|ĩ|ị',

            'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',

            'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',

            'y'=>'ý|ỳ|ỷ|ỹ|ỵ',

            'A'=>'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ặ|Ằ|Ẳ|Ẵ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',

            'D'=>'Đ',

            'E'=>'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',

            'I'=>'Í|Ì|Ỉ|Ĩ|Ị',

            'O'=>'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',

            'U'=>'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',

            'Y'=>'Ý|Ỳ|Ỷ|Ỹ|Ỵ',

        );

        foreach($unicode as $nonUnicode=>$uni){

            $str = preg_replace("/($uni)/i", $nonUnicode, $str);

        }
        $str = str_replace(' ','_',$str);

        return $str;

    }

}
