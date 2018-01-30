// Randomize the number
$(document).on('click', '#randomInt' ,function() {
  var arr = [0,1,2,3,4,5,6,7,8,9,10];
  var randNum = arr[Math.floor(Math.random() * arr.length)];
  var rand = {
    rand_nums: {
      value: randNum
    }
  }
  console.log(rand);
  $.ajax({
      url: '/rand_nums.js', // url where to submit the request
      type : "POST", // type of action POST || GET
      data : rand, // post data || get data
    })
})

$(document).on('click','td.show',function() {
  var id = $(this).data('rand_id');
  var value = $('#rands-' + id).val();
  var html = '<input id="rand-'+id+'" type="number" value="'+value+'" />';
  var footer = '<button data-rand_id='+id+' type="button" class="edit btn btn-primary">Edit changes</button>';
  footer += '<a href="/rand_nums/'+id+'" data-method="delete" data-confirm="Are you sure?" class="btn btn-secondary">Delete</a>';
  $('.modal-body').html(html);
  $('.modal-footer').html(footer);
  $('#myModal').modal({
    show: true,
  });
});

// Edit the number
$(document).on('click', '.edit' ,function() {
  var id = $(this).data('rand_id');
  rand = $('#rand-' + id).val();
  console.log(rand);
  var rand_edit = {
    rand_nums: {
      value: rand
    }
  }
  $.ajax({
      url: '/rand_nums/' + id, // url where to submit the request
      type : "PUT", // type of action POST || GET
      data : rand_edit, // post data || get data
    })
});




