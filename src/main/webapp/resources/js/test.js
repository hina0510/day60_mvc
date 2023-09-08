function test() {alert("test클릭");}
window.onload=()=>{
		const btn = document.getElementById("btn")
		btn.addEventListener("click", test)
}