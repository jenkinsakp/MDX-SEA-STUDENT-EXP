<?php

namespace DevDojo\Chatter\Events;

use Illuminate\Http\Request;
use Validator;

class ChatterBeforeNewDiscussion
{
    /**
     * @var Request
     */
    public $request;

    /**
     * @var Validator
     */
    public $validator;

    /**
     * Constructor.
     *
     * @param Request   $request
     * @param Validator $validator
     */
    // public function __construct(Request $request, Validator $validator)
    public function __construct(Request $request)

    {
        $this->request = $request;
        // $this->validator = $validator;
    }
}
