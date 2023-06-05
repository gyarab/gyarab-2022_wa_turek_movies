function toggleMode(){
    let button = document.getElementById("mode-toggler");
    if(document.documentElement.getAttribute("data-bs-theme") == "dark"){
        document.documentElement.setAttribute("data-bs-theme", "light")
        button.classList.toggle("border-dark")
        button.classList.toggle("border-light")
        button.innerHTML = "Dark Mode"
    }
    else{
        document.documentElement.setAttribute("data-bs-theme", "dark")
        button.classList.toggle("border-dark")
        button.classList.toggle("border-light")
        button.innerHTML = "Light Mode"
    }
}