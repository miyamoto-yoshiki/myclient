function clientIndex() {
  const clients = [...document.querySelectorAll(".lists")];

  clients.forEach(function(target) {
    target.addEventListener('mouseover', function(){
      phoneEmail = target.querySelector('.phone-email')
      phoneEmail.setAttribute("style", "display:block;")
    })
    target.addEventListener('mouseout', function(){
      phoneEmail = target.querySelector('.phone-email')
      phoneEmail.removeAttribute("style", "display:block;");
    })
  })
}

window.addEventListener('load', clientIndex)