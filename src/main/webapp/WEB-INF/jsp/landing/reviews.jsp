<div class="blog-comments">
   <div class="reply-form">
      <h4>Leave a Reply</h4>
      <p>Your email address will not be published. Required fields are marked * </p>
      <form>
         <div class="row">
            <div class="col-md-6 form-group">
               <input name="userName" id="userName" type="text" class="form-control" placeholder="Your Name*">
            </div>
            <div class="col-md-6 form-group">
               <input name="userEmail" id="userEmail" type="text" class="form-control" placeholder="Your Email*">
            </div>
         </div>
         <div class="row">
            <div class="col form-group">
               <input name="userPhone" id="userPhone" type="number" class="form-control" placeholder="Your Phone No.">
            </div>
         </div>
         <div class="row">
            <div class="col form-group">
               <textarea name="reviewMessage" name="reviewMessage" id="reviewMessage" class="form-control" placeholder="Your Comment*"></textarea>
            </div>
         </div>
        <select name="reviewUrl" id="reviewUrl" hidden>
		  <option value="${requestScope['javax.servlet.forward.request_uri']}"></option>
		</select>
		<div class="alert alert-success replyalert-success" role="alert" style=" display: none; ">
		  <h5 class="alert-heading fw-bold"><i class="bi bi-check2 me-2"></i> Thank You!</h5> 
		  <p class="mb-0">your message was sent successfully</p>
		</div>
         <button type="button" class="btn btn-primary reviews">Post Comment</button>
      </form>
   </div>
</div>

<script>
	$(".reviews").click(function() {
		var name = document.getElementById("userName").value;
		var email = document.getElementById("userEmail").value;
		var phone = document.getElementById("userPhone").value;
		var mess = document.getElementById("reviewMessage").value;
		var url = document.getElementById("reviewUrl").value;
		var settings = {
			"url" : "/reviewForm",
			"method" : "POST",
			"timeout" : 0,
			"headers" : {
				"Content-Type" : "application/json"
			},
			"data" : JSON.stringify({
				"userName" : name,
				"userEmail" : email,
				"userPhone" : phone,
				"reviewMessage" : mess,
				"reviewUrl" : url
			}),
		};
		$('form .form-control').removeClass('is-invalid');
		if (name && email && phone && mess) {
			$.ajax(settings).done(function(response) {
				console.log('done-', response);
				$('.replyalert-success').slideDown('fast');
				setTimeout(function() {
					$('.replyalert-success').slideUp('fast');
					$('form')[0].reset();
				}, 4000);
			}).fail(function(jqXHR, textStatus, error) {
				console.log('error');
				$('.replyalert-success').slideUp('fast');
			});
		} else {
			$('form .form-control').each(function() {
				if ($(this).val() === '') {
					$(this).addClass('is-invalid');
				} else {
					$(this).removeClass('is-invalid');
				}
			});
			alert('Please fill out all required fields !');
		}
	});
</script>
