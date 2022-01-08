<a class="btn" type="button" href="{{ route('showpagecart') }}">
    <i class="fas fa-shopping-cart" aria-hidden="true"></i>
        @livewire('cart-counter')
        Cart ({{ $cart_count }})
</a> 
