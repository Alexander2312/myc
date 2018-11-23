hideComments = () => {
	let forms = document.getElementById('new_room_element_approval').querySelectorAll('.form-check');

	forms.forEach((form) => {
		
		const checkbox = document.querySelector("input[type='checkbox']");
		
		const comment = document.querySelector('.fa-comment-dots');
		if(checkbox.checked) {
			comment.classList.toggle('comment-hide')
		}
	})
};

hideComments();

