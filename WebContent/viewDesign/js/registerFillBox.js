
		    var city = new Array();
		    city["湖北"] = ['武汉','黄冈','恩施'];
		    city["贵州"] = ['贵阳','遵义','六盘水'];
		    city["江苏"] = ['杭州','南京','宿迁'];
		
		    function initCity(){
		    	var cities = document.getElementById("city");
		    	for(var i in city){
		    		cities.add(new Option(i,i),null);
		    	}
		    }
		    window.onload = initCity;
		    
		    function changeCity(){
		    	var cityValue = document.getElementById("city").value;
		    	var areaValue = document.getElementById("area");
		    	areaValue.options.length = 0;
		    	for(var i in city){
		    		if(i == cityValue){
		    			for(var j in city[i]){
		    				areaValue.add(new Option(city[i][j],city[i][j]),null);
		    			}
		    		}
		    	}
		    }