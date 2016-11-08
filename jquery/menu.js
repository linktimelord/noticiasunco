$(document).ready(main);

var contador=1;

function main(){
    
    $('.menu_bar').click(function(){
        //$('nav').toggle();
        if (contador==1) {
            $('nav').animate({
               left:'0'
               //,top:'0'
            });
            
            contador=0;
        }else{
            $('nav').animate({
               left:'-100%'//,top:'-100%'
            });
            contador=1;
        }
        
    });

}