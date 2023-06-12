function toggleMode() {
  let icon = document.getElementById("icon"); 
  icon.classList.toggle("bi-brightness-high-fill");
  icon.classList.toggle("bi-moon-stars-fill");
  if (document.documentElement.getAttribute("data-bs-theme") == "dark") {
    document.documentElement.setAttribute("data-bs-theme", "light");
    localStorage.setItem("theme", "light");
  } else {
    document.documentElement.setAttribute("data-bs-theme", "dark");
    localStorage.setItem("theme", "dark");
  }
}
