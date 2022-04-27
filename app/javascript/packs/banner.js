const audioNavbar = document.getElementById("audio-navbar");
const playButtonNavbar = document.querySelector('.play-btn')

function playSong(e) {
  if(audioNavbar.paused) {
    audioNavbar.play()
    this.classList.add('active')
  } else {
    audioNavbar.pause()
    this.classList.remove('active')
  }
}

function playingDesign(e) {
  if(this.classList.contains('active')) {
    this.value = 'Pause me 🔇'
  } else {
    this.value = 'Play me 🔊'
  }
}
playButtonNavbar.addEventListener('click', playSong)
playButtonNavbar.addEventListener('click', playingDesign)

//SUB MENU

const filmTrigger = document.querySelector('.film')
const subMenu = document.querySelector('.sub-menu')
const nav = document.querySelector('.nav')

function handleEnter() {
  subMenu.classList.add('trigger-enter');
  setTimeout(() => subMenu.classList.contains('trigger-enter') && subMenu.classList.add('trigger-enter-active'), 150);
}

function handleLeave() {
  this.classList.remove('trigger-enter', 'trigger-enter-active');
}

filmTrigger.addEventListener('mouseenter', handleEnter);
filmTrigger.addEventListener('mouseleave', handleLeave);
