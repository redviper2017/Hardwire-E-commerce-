</div><br><br>

	<footer class="text-center" id="footer">&copy; Copyright 2016-2017 Hardwire</footer>

	<!--Details Modal -->




<script>
	jQuery(window).scroll(function(){
		var vscroll = jQuery(this).srollTop();
		console.log(vscroll);
	});

	function detailsmodal(id){
		var data = {"id" : id};
		jQuery.ajax({
			url : '/New Project/includes/detailsmodal.php',
			method : "post",
			data : data,
			success: function(data){
				jQuery('body').append(data);
				jQuery('#details-modal').modal('toggle');
			},
			error: function(){
				alert("Something went wrong !");
			}
		}); 
	}
</script>
</body>
</html>