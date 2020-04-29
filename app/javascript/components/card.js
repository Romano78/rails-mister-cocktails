




const initiCard = () => {
    const cardTitle = document.querySelector(".card-title-name");
    console.log(cardTitle);
    cardTitle.addEventListener('click', (e) => {
        console.log(cardTitle.style.color = 'red')
        
    });
}

export { initiCard } 

