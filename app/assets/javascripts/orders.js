$(document).on("turbolinks:load", function(){
  $.ajax({
    url: "/stastics",
    method: "GET",
    datas: {
      name: name
    },
    dataType: "JSON"
  }).done( drawPieChart) ;
});


$(document).on("turbolinks:load", function (){
  $(".order_name").on("click" , function(e){
    //prevent submit event
    getListItem(e.currentTarget.innerHTML);
    var status = $(this).parent().find(".status").text();
    setStatusBar( status );
  });
});

var getListItem = function( name ){

  $.ajax({
    // url: "/line
    url: "/lineItemList" ,
    type: "GET",
    data: {
      name: name
    },
    dataType: "JSON"
  }).done( showLineItems );
};

var showLineItems = function ( data ){
  $(".newItem").html("");
  var $body = $(".orderItem");
  var $total = $(".total");
  var totalValue = 0;
  $total.text("0");
  for (var i = 0; i < data.lineItems.length; i++) {
    var $tr = $("<tr class></tr>");
    $tr.addClass("newItem");
    var $nameTag = $("<td></td>");
    $nameTag.text(data.lineItems[i].product.name);
    var $priceTag = $("<td></td>");
    $priceTag.text(data.lineItems[i].product.price);
    var $QuantityTag = $("<td></td>");
    $QuantityTag.text(data.lineItems[i].quantity);
    var $status = $("<td></td>");
    $status.text(data.order.status);
    $tr.append($nameTag);
    $tr.append($priceTag);
    $tr.append($QuantityTag);
    $tr.append($status);
    $("#table-header").after($tr);
    totalValue +=  ( parseInt(data.lineItems[i].product.price) * parseInt(data.lineItems[i].quantity)  );
  }

  $total.text(totalValue);
  // Create a tr for every order`
    // Add a td for the name, status, quantity and price
};

var setStatusBar = function ( status ){
      if (status === "NEW"){
          $('#progress-bar').val('0');
          $(this).nextAll().removeClass('border-change');
          $('.percent').html("0% NEW");
        }else if (status === "WAIT"){
          $(this).nextAll().removeClass('border-change');
          $('#progress-bar').val('33');
          $(this).prevAll().addClass('border-change');
          $(this).addClass('border-change');
           $('.percent').html("33% WAIT");
         }else if (status === "COOK"){
          $(this).nextAll().removeClass('border-change');
          $('#progress-bar').val('66');
          $(this).prevAll().addClass('border-change');
          $(this).addClass('border-change');
          $('.percent').html("66% COOK");
         } else{
          $('#progress-bar').val('100');
           $(this).addClass('border-change');
          $(this).prevAll().addClass('border-change');
           $('.percent').html("100% DELIVER");
         }
};

var drawPieChart = function (datas){
  var ctx = document.getElementById("myChart");
  var data = {
                labels: [],
                datasets: [
                    {
                        data: [],
                        backgroundColor: [],
                        hoverBackgroundColor: []
                    }]
            };
  var backgroundColor =[ "#FF0000"  ,"#00FF00" , "#0000FF" , "#FFFF00" , "#CCEEFF" , "#FF6384", "#36A2EB", "#FFCE56"];
  //set labels
  data.labels = datas.obj.name ;
  // set data
  data.datasets[0].data = datas.obj.count;
  data.datasets[0].backgroundColor = backgroundColor;
  data.datasets[0].hoverBackgroundColor = backgroundColor;

  //set backgroundColor & hoverBackgroundColor

  var myPieChart = new Chart(ctx,{
                      type: 'pie',
                      data: data,
                      animation:{
                    animateScale:true
                }
                  });

};
