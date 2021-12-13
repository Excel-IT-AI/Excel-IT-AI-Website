<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ApplyForJobMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $name;
    public $phone_number;
    public $emailColumn;
    public $subject;
    public $career;
    public $message;
    public $cv;

    public function __construct($name,$phone_number,$emailColumn,$subject,$career,$message,$cv){
        $this->name          = $name;
        $this->phone_number  = $phone_number;
        $this->emailColumn   = $emailColumn;
        $this->subject       = $subject;
        $this->career        = $career;
        $this->message       = $message;
        $this->cv            = $cv;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.applyjob')->attach($this->cv);
    }
}