@extends('frontend.layouts.master')
@section('title','E-SHOP || HOME PAGE')

<div style="text-align: center">
    <button wire:click="increment">+</button>
    <h1>{{ @$count }}</h1>
</div>

