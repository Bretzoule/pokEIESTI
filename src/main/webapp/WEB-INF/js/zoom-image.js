const img = document.querySelector("img");
const wrapper = document.querySelector(".img-wrapper");

wrapper.addEventListener('mousemove', (e) =>{
    let width = img.offsetWidth;
    let height = img.offsetHeight;

    let mouseX = e.offsetX;
    let mouseY = e.offsetY;

    let imgPosX = (mouseX / width * 100);
    let imgPosY = (mouseY / height * 100);

    img.style.bottom = `${imgPosY}%`;
    img.style.right =`${imgPosX}%`; 
});

wrapper.addEventListener('mouseleave', () => {
    img.style.bottom = `0px`;
    img.style.right =`0px`;
    img.style.width = wrapper.offsetWidth;
    img.style.height = wrapper.offsetHeight;
});