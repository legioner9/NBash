
const imageToggle = document.getElementById('imageToggle')
const darkImage = document.getElementById('darkimage')
const lightImage = document.getElementById('lightimage')

if (imageToggle) {
  imageToggle.addEventListener('change', () => {
    if (imageToggle.checked) {
      darkImage.style.width = '100%';
    } else {
      darkImage.style.width = '0%';
    }
  })
}

