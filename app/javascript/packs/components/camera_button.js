const cameraBtns = document.querySelectorAll(".btn-camera");

if (cameraBtns) {
  cameraBtns.forEach((cameraBtn) => {
    cameraBtn.addEventListener('click', (e) => {
      const cameraContainer = e.target.parentNode;
      cameraContainer.querySelector('.form-control-file').click();
    });
  })

}
