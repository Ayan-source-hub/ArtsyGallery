const container = document.getElementById('container');

function setupEventListeners() {
    // Get fresh button elements each time
    const toLogin = document.getElementById('to-login');
    const toRegister = document.getElementById('to-register');

    // Remove existing listeners by replacing elements
    const newToLogin = toLogin.cloneNode(true);
    const newToRegister = toRegister.cloneNode(true);

    toLogin.parentNode.replaceChild(newToLogin, toLogin);
    toRegister.parentNode.replaceChild(newToRegister, toRegister);

    // Set up logic again
    if (window.innerWidth < 768) {
        newToLogin.addEventListener('click', () => {
            container.classList.remove("active");
        });

        newToRegister.addEventListener('click', () => {
            container.classList.add("active");
        });
    } else {
        newToRegister.addEventListener('click', () => {
            container.classList.remove("active");
        });

        newToLogin.addEventListener('click', () => {
            container.classList.add("active");
        });
    }
}

// Initial run
setupEventListeners();

// Rerun on resize
window.addEventListener('resize', setupEventListeners);




//test code
const formContainer = document.querySelector(".form-container")

formContainer.addEventListener("submit",(e)=>{
e.preventDefault()

const email = formContainer.email.value
const password = formContainer.password.value

const authenticated = authentication(email,password)

if(authenticated){
window.location.href = "xample3.html"
}else{
alert("wrong")
}
})

// function for checking username and password

function authentication(email,password){
if(email === "roy123456@gmail.com" && password === "password"){
return true
}else{
return false
}
}
