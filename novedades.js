
 function mostrarNovedades(){  
    $.ajax({
       dataType:'json',
       url: 'http://conu.fi.uncoma.edu.ar/rss_calendar_uncoma/json.php',
       //url:'json.php',
       success: function(response){ console.log("exitoso");
           $(response.fuentes).each(function(index, item){
               var separator=$(document.createElement('p')).text("----------------------------------------------------------------");
               var div= $("<div data-role=\"collapsible\" data-inset=false>").appendTo('#novedadesId');
               //var h3=$(document.createElement('h3')).text(item.nombre);
               //h3.addClass('custom-centercollheader3');
               //h3.enhanceWithin();
               //div.addClass('margen');
               //div.append(h3);
               
               $(item.noticias).each(function(index2, item2){
                   var a1=$(document.createElement('a')).text('('+item.nombre+') ');
                   a1.attr("onclick", "navigator.app.loadUrl('"+ item.pagina+"', {openExternal: true});");
                   var h4= $(document.createElement('h4')).text(item2.titulo);
                   var p=$(document.createElement('p'));
                   var a= $(document.createElement('a')).text('Ir a la fuente');
                   a.attr("onclick", "navigator.app.loadUrl('"+ item2.url+"', {openExternal: true});");
                   p.append(a1);
                   p.append(item2.copete.slice(0,256)+'...');
                   p.append(a);
                   div.append(h4);
                   div.append(p);
                   div.append(separator);
               });

           });
       }
    });
    }