(function(){
	window.addEventListener("DOMContentLoaded", function() {
        var tenant = localStorage.getItem('tenant');
		document.body.classList.add(tenant);
		if(tenant==='space')
		{
			var dropdown = document.getElementById('kc-locale-dropdown');
			if(dropdown){
			dropdown.classList.add('hidedropdown');
		    }
		// document.getElementById('selfSingUp').classList.add('hidegooglesignin');
			var login = document.getElementById('login');
        if(login) {
			login.classList.add('societalbtn');
		}			
		var loginbox = document.getElementById('loginbox');
         if(loginbox){
			 loginbox.classList.add('societallogin');
		 }			 

		}
    }, false);
})(); 