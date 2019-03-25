<?php namespace Hocmai\Homepage\Components;

use Cms\Classes\ComponentBase;
use Hocmai\Homepage\Models\Info as NewInfo;
use Hocmai\Homepage\Models\Products as NewProducts;
use Db;
use Illuminate\Database\Eloquent\Model;

use Mail;
use Url;
use Input;
use Request;
use Response;
use ApplicationException;
use Validator;
use ValidationException;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use Config;
class Info extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Info ',
            'description' => 'Nội dung trang chủ'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public $khoi_xoay;

    public $giao_duc;

    public function onRun() {
      
       
        $khoi_xoay = $this->khoi_xoay= NewInfo::where('status', 1)->get()->reverse()->take(5)->toArray();
        $giao_duc = $this->giao_duc= NewInfo::where('status', 2)->get()->take(5)->reverse();

    }

    public function onSendss() {
        $result = [];
        $this->page['result'] = $result;
    }

    // public function onSend()
    // {
        // dump('123');
        // $name = post('name');
        // $phone = post('phone');
        // $email = post('email');
        // $content = post('content');
        // $vars = ['name' => $name, 'phone' => $phone, 'email' => $email, 'content' => $content];
        // $rules = ['name' => 'required', 'email' => 'required|email'];
        // $msgs = ['required' => 'Vui lòng không để trống','email' => 'Vui lòng nhập đúng định dạng email'];
        // $v = Validator::make($vars, $rules, $msgs);
        // if ($v->fails())
        // {
        //     $this['result'] = $v->messages()->first();

        // }else{
        //     Mail::send('hocmai.homepage::mail.message', $vars, function($message) {
        //     $message->to('khangpm88@gmail.com', 'Admin Person');
        //     $message->subject('Day la mail');
        //     });
        //     $this['result'] = 'Email verstuurd';
        // }
        

        // error laravel
        // $vars = 
        //     [
        //         'name' => Input::post('name'), 
        //         'phone' => Input::post('phone'),
        //         'email' => Input::post('email'),
        //         'content' => Input::post('content'),
        //     ];

        // Mail::send('hocmai.homepage::mail.message', $vars, function($message) {

        //     $message->to('khangpm88@gmail.com', 'Admin Person');
        //     $message->subject('New message from contact form !');

        // });
        
        // $to = "khangpm88@gmail.com";
        // $sub = "Php Mail";
        // $msg = "Test Message From PHP";
        // $subject ='My subject';

        // // mail($to, $sub, $msg, "From: khangpm88@gmail.com");
        // $headers =  'MIME-Version: 1.0' . "\r\n"; 
        // $headers .= 'From: Your name <info@address.com>' . "\r\n";
        // $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; 
        // $body ='asdasda';

        // mail($to, $subject, $body, $headers);



    // }

    public function onSend() {
        $name = Input::post('name');
        $phone = Input::post('phone');
        $email = Input::post('email');
        $content = Input::post('content');

        $mail = new PHPMailer(true);                              // Passing `true` enables exceptions
        try {
            //Server settings
            $mail->SMTPDebug = 2;                                 // Enable verbose debug output
            $mail->Charset = "UTF-8";
            $mail->isSMTP();                                      // Set mailer to use SMTP
            $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                               // Enable SMTP authentication
            $mail->Username = Config::get('app.user_name');                 // SMTP username
            $mail->Password = Config::get('app.pass');                                 // SMTP password
            $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 587;   
            //Recipients
            $mail->setFrom( $email, 'Mailer');
            $mail->addAddress($email, $name);     // Add a recipient
            $mail->addAddress(Config::get('app.address'));               // Name is optional
            $mail->addReplyTo(Config::get('app.reply'), Config::get('app.reply_title'));

            //Content
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = 'New message from contact form !';
            $mail->Body    = 
                '<html><body>'.
                        '<strong>Thông tin cá nhân :</strong>'.
                        '<table rules="all" style="border-color: #666;" cellpadding="10">'.
                            "<tr style='background: #eee;'><td><strong>Name:</strong> </td><td>" . $name. "</td></tr>".
                            "<tr><td><strong>Email:</strong> </td><td>" .$email . "</td></tr>".
                            "<tr><td><strong>Phone:</strong> </td><td>" .$phone . "</td></tr>".
                        "</table>".
                        '<strong>Nội dung :</strong>'.
                "<p>" .$content. "</p>"
                ."</body></html>"
            ;
            // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            $mail->send();
            // echo 'Message has been sent';
            $suc = 1;
        } catch (Exception $e) {
            $suc = 2;
            // echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
        }

    }

    public function onSendMail() {
        $name = Input::post('name');
        $phone = Input::post('phone');
        $email = Input::post('email');
        $content = Input::post('content');
        $suc = 1;
        $mail = new PHPMailer(true);                              // Passing `true` enables exceptions
        try {
            //Server settings
            $mail->SMTPDebug = 2;                                 // Enable verbose debug output
            $mail->Charset = "UTF-8";
            $mail->isSMTP();                                      // Set mailer to use SMTP
            $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                               // Enable SMTP authentication
            $mail->Username = Config::get('app.user_name');                 // SMTP username
            $mail->Password = Config::get('app.pass');                                 // SMTP password
            $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 587;   
            //Recipients
            $mail->setFrom( $email, 'Mailer');
            $mail->addAddress($email, $name);     // Add a recipient
            $mail->addAddress(Config::get('app.address'));               // Name is optional
            $mail->addReplyTo(Config::get('app.reply'), Config::get('app.reply_title'));

            //Content
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = 'New message from contact form !';
            $mail->Body    = 
                '<html><body>'.
                        '<strong>Thông tin cá nhân :</strong>'.
                        '<table rules="all" style="border-color: #666;" cellpadding="10">'.
                            "<tr style='background: #eee;'><td><strong>Name:</strong> </td><td>" . $name. "</td></tr>".
                            "<tr><td><strong>Email:</strong> </td><td>" .$email . "</td></tr>".
                            "<tr><td><strong>Phone:</strong> </td><td>" .$phone . "</td></tr>".
                        "</table>".
                        '<strong>Nội dung :</strong>'.
                "<p>" .$content. "</p>"
                ."</body></html>"
            ;
            // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            $mail->send();
            $suc = 1;

        } catch (Exception $e) {
            $suc = 2;
        }

        return [
            'suc' => $suc
        ];

    }


}
