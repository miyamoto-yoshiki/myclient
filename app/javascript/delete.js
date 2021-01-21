function deleteAlert() {
  const btn = document.getElementById("delete-btn")
  const alert = document.getElementById("alert")


  btn.addEventListener('mouseover', function(){
    alert.setAttribute("style", "display:block;");
    alert.setAttribute("style", "display:flex;");
  })
  btn.addEventListener('mouseout', function(){
   alert.removeAttribute("style", "display:block;");
  })
}
window.addEventListener('load', deleteAlert)