const checkbox = document.getElementById("checkbox");
const submitBtn = document.querySelector("button");
const SColor = document.getElementById("select-color");
const elements = document.querySelectorAll(".element");

checkbox.disabled = true;
submitBtn.disabled = true;

// Color
elements.forEach(function(element){
	const color = getRandomColor();
	element.style.backgroundColor = color;
	element.innerHTML = color;
	SColor.innerHTML = color;
		
});


// Generate Color
function getRandomColor(){
	const letter = "0123456789ABCDEF";
	let color = "#"
	for(let i=0; i<6 ; i++){
		color += letter[Math.floor(Math.random()*16)];		
	}
	return color;	
};

// check color

elements.forEach(function(element){
	element.addEventListener("click", function(){
		if(element.innerHTML === SColor.innerHTML){
			alert("Congratulation! You Are Human");
			checkbox.checked = ture;
			submitBtn.disabled = false;
			submitBtn.classList.add("green");			
		}
		else {
			alert("Please Verify You are human!");
			checkbox.disabled = true;
			submitBtn.disabled = true;
			location.reload();
		}
	})
	
	
	
})