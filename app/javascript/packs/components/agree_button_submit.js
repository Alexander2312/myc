const inputs = document.querySelectorAll(".new_room_element_approval .form-check-input")

if (inputs) {
  inputs.forEach((input) => {
    input.addEventListener('click', (e) => {
      e.target.parentNode.parentNode.parentNode.submit();
    })
  });
}

const edit_inputs = document.querySelectorAll(".edit_room_element_approval .form-check-input")

if (edit_inputs) {
  edit_inputs.forEach((input) => {
    input.addEventListener('click', (e) => {
      e.target.parentNode.parentNode.parentNode.submit();
    })
  });
}
