var a = "";
var b = "";
var op = "";
var dec_flag = 0;	// 0: no decimal, 1: decimal
var op_flag = 0;	// 0: no operation, 1: operation
var plus_minus = 0;	// 0: positive number, 1: negative


$(document).ready(function() {

	$('.clear-all').click(function() {
		clear_var();
		$("[class^='screen-']").html("");
	});

	$('.clear-entry').click(function(){
		if(op_flag == 0){
			a = "";
		}else{
			b = "";
		}
		$('.screen-bot').html("");
	});

	$('.delete').click(function(){
		if(op_flag == 0){
			a = a.substring(0,a.length-1);
			$('.screen-bot').html(a);
		}else{
			b = b.substring(0,b.length-1);
			$('.screen-bot').html(b);
		}
	});

	$('.num').click(function() {
		n = this.innerHTML;
		if(op_flag==0){
			if(a.length<10){
				a += n;
				$('.screen-bot').html(a);
			}else{
				blink('.screen-bot');
			}
		}
		else{
			if(b.length<10){
				b += n;
				$('.screen-bot').html(b);
			}else{
				blink('.screen-bot');
			}
		}
		
	});

	$('.decimal').click(function(){
		var len;
		if(op_flag == 0){
			len = a.length -1;
			if(dec_flag == 0 || (dec_flag == 1 && (a.indexOf('.') == len))){
				dec_flag ^= 1;
				if(dec_flag == 1){
				a += ".";			
				$('.screen-bot').html(a);
				}
				else{
					a = a.replace(".","");
					$('.screen-bot').html(a);
				}
			}
		}
		else{
			len = b.length -1;
			if(dec_flag == 0 || (dec_flag == 1 && (b.indexOf('.') == len))){
				dec_flag ^= 1;
				if(dec_flag == 1){
					b += ".";			
					$('.screen-bot').html(b);
				}
				if(dec_flag == 0){
					b = b.replace(".","");
					$('.screen-bot').html(b);
				}
			}
		}
	});

	$('.plus-minus').click(function() {
		plus_minus^=1;
		if(op_flag == 0 && plus_minus == 1){
			a = "-"+a;			
			$('.screen-bot').html(a);
		}
		if(op_flag == 0 && plus_minus == 0){
			a = a.replace("-","");
			$('.screen-bot').html(a);
		}
		if(op_flag == 1 && plus_minus == 1){
			b = "-"+b;			
			$('.screen-bot').html(b);
		}
		if(op_flag == 1 && plus_minus == 0){
			b = b.replace("-","");
			$('.screen-bot').html(b);
		}
	});

	$('.operation').click(function() {
		if(a != ""){
			if(op_flag == 0){
			dec_flag = 0;
			plus_minus = 0;
			}
			op_flag = 1;
			op = this.innerHTML;
			$('.screen-top').html(a+" "+op);
			$('.screen-bot').html(b);
		}
		
	});

	$('.equal').click(function() {
		var ans;
		var a_fl = parseFloat(a);
		var b_fl = parseFloat(b);
		switch(op){
			case "×":
				ans = multiply(a_fl, b_fl);
				break;
			case "÷":
				ans = divide(a_fl, b_fl);
				break;
			case "+":
				ans = add(a_fl, b_fl);
				break;
			case "-":
				ans = subtract(a_fl, b_fl);
				break;
			default:
				ans = a;
		}
		if(op != 0){
			$('.screen-top').html(a+" "+op);
			$('.screen-bot').html(ans);
			clear_var();
		}
	});
});

var clear_var = function(){
	a = "";
	b = "";
	op = "";
	op_flag = 0;
	plus_minus = 0;
	dec_flag = 0;
}

var add = function(a, b){
    return a+b;
};

var multiply = function(a,b){
    return a*b;
};

var divide = function(a,b){
	return a/b;
};

var subtract = function(a,b){
    return a-b;
};


function blink(selector){
	$(selector).fadeOut('fast', function(){
	    $(this).fadeIn('fast', function(){
	    });
	});
}
