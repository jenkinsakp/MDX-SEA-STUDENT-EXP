@extends('backend.layouts.master')

@section('title','Order Detail')

@section('main-content')
<div class="card">
<h5 class="card-header">Order       
  {{-- <a href="{{route('order.pdf',@$order->id)}}" class=" btn btn-sm btn-primary shadow-sm float-right"><i class="fas fa-download fa-sm text-white-50"></i> Generate PDF</a> --}}
  </h5>
  <div class="card-body">
    @if($order)
    <table class="table table-striped table-hover">
      <thead>
        <tr>
            <th>S.N.</th>
            <th>Order No.</th>
            <th>Name</th>
            <th>Email</th>
            <th>Quantity</th>
            {{-- <th>Charge</th> --}}
            <th>Total Amount</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <tr>
            <td>{{$order->id}}</td>
            <td>{{$order->order_number}}</td>
            <td>{{$order->first_name}} {{$order->last_name}}</td>
            <td>{{$order->email}}</td>
            <td>{{$order->quantity}}</td>
            {{-- <td>MUR.{{@$order->shipping->price}}</td> --}}
            <td>MUR.{{number_format($order->total_amount,2)}}</td>
            <td>
                @if($order->status=='new')
                  <span class="badge badge-primary">{{$order->status}}</span>
                @elseif($order->status=='process')
                  <span class="badge badge-warning">{{$order->status}}</span>
                @elseif($order->status=='delivered')
                  <span class="badge badge-success">{{$order->status}}</span>
                @else
                  <span class="badge badge-danger">{{$order->status}}</span>
                @endif
            </td>
            <td>
                <a href="{{route('order.edit',$order->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="edit" data-placement="bottom"><i class="fas fa-edit"></i></a>
                <form method="POST" action="{{route('order.destroy',[$order->id])}}">
                  @csrf
                  @method('delete')
                      <button class="btn btn-danger btn-sm dltBtn" data-id={{$order->id}} style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" data-placement="bottom" title="Delete"><i class="fas fa-trash-alt"></i></button>
                </form>
            </td>

        </tr>
      </tbody>
    </table>

    <section class="confirmation_part section_padding">
      <div class="order_boxes">
        <div class="row">
          <div class="col-lg-6 col-lx-4">
            <div class="order-info">
              <h4 class="text-center pb-4">ORDER INFORMATION</h4>
              <table class="table">
                    <tr class="">
                        <td>Order Number</td>
                        <td> : {{$order->order_number}}</td>
                    </tr>
                    <tr>
                        <td>Order Date</td>
                        <td> : {{$order->created_at->format('D d M, Y')}} at {{$order->created_at->format('g : i a')}} </td>
                    </tr>
                    <tr>
                        <td>Quantity</td>
                        <td> : {{$order->quantity}}</td>
                    </tr>
                    <tr>
                        <td>Order Status</td>
                        <td> : {{$order->status}}</td>
                    </tr>
                    {{-- <tr>
                        <td>Shipping Charge</td>
                        <td> : $ {{@$order->shipping->price}}</td>
                    </tr> --}}
                    <tr>
                      <td>Coupon</td>
                      <td> : $ {{number_format($order->coupon,2)}}</td>
                    </tr>
                    <tr>
                        <td>Total Amount</td>
                        <td> : $ {{number_format($order->total_amount,2)}}</td>
                    </tr>
                    <tr>
                        <td>Payment Method</td>
                        <td> : @if($order->payment_method=='cod') Cash on Delivery @else Paypal @endif</td>
                    </tr>
                    <tr>
                        <td>Payment Status</td>
                        <td> : {{$order->payment_status}}</td>
                    </tr>
              </table>
            </div>
          </div>

        
        </div>
      </div>
    </section>
    <div class="table-responsive">
      @if(count($products)>0)
      <table class="table table-bordered" id="product-dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            {{-- <th>S.N.</th> --}}
            <th>Title</th>
            <th>Category</th>
            <th>Is Featured</th>
            <th>Price</th>
            <th>Size</th>
         <th>Stock</th>
            <th>Photo</th>
            <th>Status</th>
          
          </tr>
        </thead>
        <tfoot>
          <tr>
            {{-- <th>S.N.</th> --}}
            <th>Title</th>
            <th>Category</th>
            <th>Is Featured</th>
            <th>Price</th>
            <th>Size</th>
           <th>Stock</th>
            <th>Photo</th>
            <th>Status</th>
           
          </tr>
        </tfoot>
        <tbody>

          @foreach($products as $product)
            @php
            $sub_cat_info=DB::table('categories')->select('title')->where('id',$product->child_cat_id)->get();
            // dd($sub_cat_info);
            $brands=DB::table('brands')->select('title')->where('id',$product->brand_id)->get();
            @endphp
              <tr>
                  {{-- <td>{{$product->id}}</td> --}}
                  <td>{{$product->title}}</td>
                  <td>{{$product->cat_info['title']}}
                    <sub>
                        {{$product->sub_cat_info->title ?? ''}}
                    </sub>
                  </td>
                  <td>{{(($product->is_featured==1)? 'Yes': 'No')}}</td>
                  <td>MUR. {{$product->price}} /-</td>
                  <td>{{$product->size}}</td>
                  <td>
                    @if($product->stock>0)
                    <span class="badge badge-primary">{{$product->stock}}</span>
                    @else
                    <span class="badge badge-danger">{{$product->stock}}</span>
                    @endif
                  </td>
                  <td>
                      @if($product->photo)
                          @php
                            $photo=explode(',',$product->photo);
                            // dd($photo);
                          @endphp
                          <img src="{{$photo[0]}}" class="img-fluid zoom" style="max-width:80px" alt="{{$product->photo}}">
                      @else
                          <img src="{{asset('backend/img/thumbnail-default.jpg')}}" class="img-fluid" style="max-width:80px" alt="avatar.png">
                      @endif
                  </td>
                  <td>
                      @if($product->status=='active')
                          <span class="badge badge-success">{{$product->status}}</span>
                      @else
                          <span class="badge badge-warning">{{$product->status}}</span>
                      @endif
                  </td>
                 
              </tr>
          @endforeach
        </tbody>
      </table>
      
      @else
        <h6 class="text-center">No Products found!!! Please create Product</h6>
      @endif
    </div>
    @endif

  </div>
</div>
@endsection

@push('styles')
<style>
    .order-info,.shipping-info{
        background:#ECECEC;
        padding:20px;
    }
    .order-info h4,.shipping-info h4{
        text-decoration: underline;
    }

</style>
@endpush
