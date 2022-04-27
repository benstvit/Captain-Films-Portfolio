
  const photos = document.querySelectorAll('.photo')
  const description = document.querySelector('.photo-description')

function widenPhoto(e) {
  this.classList.toggle('open')
  photos.forEach((photo) => {
    const className = photo.getAttribute("class")
    if (className.includes('open') && photo !== this) {
      photo.classList.remove('open')
    }
  })
}

function hoverPhoto(e) {
  if (this.dataset.id % 2 === 0){
    this.classList.add('even')
  } else {
    this.classList.add('odd')
  }
}
function leavePhoto(e) {
  if (this.dataset.id % 2 === 0){
    this.classList.remove('even')
  } else {
    this.classList.remove('odd')
  }
}


photos.forEach(photo => photo.style.flex = 1)
photos.forEach(photo => photo.addEventListener('click', widenPhoto))
photos.forEach(photo => photo.addEventListener('mouseover', hoverPhoto))
photos.forEach(photo => photo.addEventListener('mouseleave', leavePhoto))
