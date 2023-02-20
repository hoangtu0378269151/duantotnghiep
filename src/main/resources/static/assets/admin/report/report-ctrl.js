app.controller("report-ctrl", function($scope , $http){
	$scope.items = [];

	$scope.initialize = {
		load() {
			$http.get("/rest/orders/report").then(resp => {
				$scope.items = resp.data;
				console.log(resp.data)
			})
		}	
	}
	$scope.initialize.load();
})

