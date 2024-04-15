$(document).ready(function() {
    $.ajax({
        url: "product.php",
        type: "POST"
    })
    .then(function(response){
        response = JSON.parse(response);
        console.log(response);
        let  i = 0;
        response.forEach(element => {
            i++;
             let $div = $('<div class="zdjecie">' + "<p>" + element[0] + " " + element[1] + "</p>" +  "<img class='pilkarz' src=" +element[2] + "</img>" + "<p class='note'>" + element[3] + "</p>" + '</div>');
            $div.hide();
            
            $("#content").append($div);
            $("#content").hide();
            $div.delay(100*i).show("fast");
             $(".note").hide();
             $(".zdjecie").mouseenter(function(){
                $(this).find(".pilkarz").fadeOut(); // Znika tylko element ".pilkarz" wewnątrz najechanego paragrafu
                $(this).find(".note").show("slow");
            }).mouseleave(function(){
                $(".note").hide("fast");
                $(this).find(".pilkarz").fadeIn(); // Po zjechaniu myszą, element ".pilkarz" znów się pojawia
                
            });

    $("#getData").click(function(){
       
        $("#content").show('fast');
                

                // $("p").mouseenter(function(){
                    
                //     $(".pilkarz").fadeOut();

                //     $(".note").show("slow");
                //     }).mouseleave(function(){
                //         $(".pilkarz").fadeIn();
                //         $(".note").hide("fast");

                //     });
            
            });

        });

    });

    $("#postData").click(function(){
       

        $("#content").hide('slow');




    });

    $("#number1").on("input",function(){

        $.ajax({
            url:"counter.php",
            type: "POST",
            data:{
                search: $("#number1").val()
            }


            
        })

        .then(function(response){
            response = JSON.parse(response);
          
              $("#result").html(response);
            
        
         i = 1;
         response.forEach(element => {
            
       

         });


        });



    });

    
   
  });