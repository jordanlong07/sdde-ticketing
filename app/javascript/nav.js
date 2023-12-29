function expandNav(){
    if (isNavOpen()){
        closeNav();
        return
    }
    const nav = document.getElementById("nav");
    const navText = document.getElementById("nav-text");
    navText.innerHTML = "Close"
    const icon = document.getElementById("nav-icon");
    icon.classList.replace("fa-chevron-right", "fa-chevron-left");
    nav.classList.add("nav-expanded");
    const signOutText = document.getElementById("sign-out-text");
    signOutText.classList.replace("hidden", "block");
}
function isNavOpen(){
    const nav = document.getElementById("nav");
    return nav.classList.contains("nav-expanded");
}
function closeNav(){
    const nav = document.getElementById("nav");
    const icon = document.getElementById("nav-icon");
    icon.classList.replace("fa-chevron-left", "fa-chevron-right");
    const navText = document.getElementById("nav-text");
    navText.innerHTML = "Open"
    nav.classList.remove("nav-expanded");
    const signOutText = document.getElementById("sign-out-text");
    signOutText.classList.replace("block", "hidden");
}