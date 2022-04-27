// SLIDE IN
const bandImages = document.querySelectorAll('.band-img')
const bandDescriptions = document.querySelectorAll('.band-description')

function translate(e) {
  if(e.type === 'mouseover') {
    console.log('hey I m working')
    bandDescriptions.forEach(description => description.classList.remove('no-transition'))
    this.classList.add('hover')
    setTimeout(() => {
      bandDescriptions.forEach((description) => {
        if(this.dataset.id === description.dataset.id)
        description.classList.add('active')
        })
    }, 600);
    transitionFinished = true
  }
}

bandImages.forEach(bandImage => bandImage.addEventListener('mouseover', translate))
