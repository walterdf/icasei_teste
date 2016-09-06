(function(){
	var logReg = function(){
		if(!(this instanceof logReg)){ return new logReg(); }
		return this;
	}
	logReg.fn = logReg.prototype = {
		register: function(){
			if (localStorage.getItem("user") == null)
				localStorage.setItem("user", this.geneKey());
			
			$.ajax({
				type: 'POST',
				url: '/registrationlog',
				data: { guid: localStorage.getItem("user"), url: window.location.pathname },
				dataType: 'json',
				success: function(result) {
			        
			    },
			    onerror: this.showError
			});
		},
		geneKey: function(){
			return Math.floor((1 + Math.random()) * 0x10000).toString(16).substring(1)
					+ Math.floor((1 + Math.random()) * 0x10000).toString(16).substring(1)
						+ Math.floor((1 + Math.random()) * 0x10000).toString(16).substring(1);
		},
		showError: function (xhr, errorType, exception ){
            var errorMessage = exception || xhr.statusText;
            alert( "Error: " + errorMessage );
        }
	}
	window.logReg = logReg();
})();
logReg.register();