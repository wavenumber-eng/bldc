var bottomHTML = `
    
	  <div class="bottom_text" onclick="window.location.href='engage.html';">Engage</div>
      <div class="social-icons">
	  <a href="#" onclick="location.href='mailto:'+String.fromCharCode(101,104,117,103,104,101,115,64,119,97,118,101,110,117,109,98,101,114,46,110,101,116); return false;" class="social-icon"><i class="fas fa-envelope"></i></a>
        <a href="https://twitter.com/emh203" class="social-icon"><i class="fa-brands fa-x-twitter"></i></a>
        <a href="https://www.linkedin.com/in/wavenumber/" class="social-icon"><i class="fab fa-linkedin"></i></a>
      </div>
`;

function includeBottomNavigation() {

 	var botNavElement = document.createElement("div");
    botNavElement.id = "bottom_nav";
    botNavElement.classList.add("bottom_nav"); 
 
	// Set the inner HTML of the created element
    botNavElement.innerHTML = bottomHTML;

    // Use document.body as the parent container
     document.body.appendChild(botNavElement);
}

includeBottomNavigation();