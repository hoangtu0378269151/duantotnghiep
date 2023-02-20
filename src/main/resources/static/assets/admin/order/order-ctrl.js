app.controller("order-ctrl", function($scope, $http) {
	$scope.items = [];
	$scope.form = {};
	$scope.form1 = {};
	$scope.item1s = [];

	$scope.initialize = function() {
		//load orders
		$http.get("/rest/orders").then(resp => {
			$scope.items = resp.data;
			$scope.items.forEach(item => {
				item.createDate = new Date(item.createDate)
				})
			
		});

	}
	$scope.initialize();
	//Xóa form
	$scope.reset = function() {
		$scope.form = {};
	}
	//Hiển thị lên form
	$scope.edit = function(item) {
		$scope.form = angular.copy(item);
		$(".nav-tabs a:eq(0)").tab('show')
		
	}
	//Cập nhật sản phẩm
	$scope.update = function() {
		var item = angular.copy($scope.form);
		$http.put(`/rest/orders/${item.id}`, item).then(resp => {
			var index = $scope.items.findIndex(p => p.id == item.id);
			$scope.items[index] = item;
			alert("Cập nhật sản phẩm thành công!");
		})
			.catch(error => {
				alert("Lỗi cập nhật sản phẩm!");
				console.log("Error", error);
			});
	}
	
	
	
	$scope.pager = {
		page: 0,
		size: 10,
		get item1s() {
			var start = this.page * this.size;
			return $scope.item1s.slice(start, start + this.size);
		},
		get count() {
			return Math.ceil(1.0 * $scope.item1s.length / this.size);
		},
		first() {
			this.page = 0;
		},
		prev() {
			this.page--;
			if (this.page < 0) {
				this.last();
			}
		},
		next() {
			this.page++;
			if (this.page >= this.count) {
				this.first();
			}

		},
		last() {
			this.page = this.count - 1;
		}
	}
	$scope.pagera = {
		pagea: 0,
		size: 10,
		get items() {
			var start = this.pagea * this.size;
			return $scope.items.slice(start, start + this.size);
		},
		get count() {
			return Math.ceil(1.0 * $scope.items.length / this.size);
		},
		first() {
			this.pagea = 0;
		},
		prev() {
			this.pagea--;
			if (this.pagea < 0) {
				this.last();
			}
		},
		next() {
			this.pagea++;
			if (this.pagea >= this.count) {
				this.first();
			}

		},
		last() {
			this.pagea = this.count - 1;
		}
	}
	
	
	
	$scope.huydonhang = function(id) {
		var order = this.items.find(order => order.id == id);
		if (order.status == "Chưa thanh toán"){
			order.status = "Hủy đơn hàng";
			$http.post(`/rest/orders/trangthai`,order).then(resp => {
				alert("Đã hủy đơn hàng")
				$scope.initianlize();
			})
		}else if (order.status == "Đã thanh toán"){
			order.status = "Hủy đơn hàng";
			$http.post(`/rest/orders/trangthai`,order).then(resp => {
				alert("Đã hủy đơn hàng");
				alert("Hoàn trả tiền");
				$scope.initianlize();
			})
		}
		else if (order.status == "Đã giao hàng"){
			order.status = "Hủy đơn hàng";
			$http.post(`/rest/orders/trangthai`,order).then(resp => {
				alert("Đã hủy đơn hàng");
				alert("Hoàn trả tiền");
				$scope.initianlize();
			})
		}else{
			alert("Đơn hàng hủy")
		}
	}
	$scope.dagiaohang = function(id) {
		var order = this.items.find(order => order.id == id);
		if (order.status == "Hủy đơn hàng"){
			alert("Đã hủy đơn hàng")
		}else if(order.status == "Đã thanh toán"){
			order.status = "Đã giao hàng";
			$http.post(`/rest/orders/trangthai`,order).then(resp => {
				alert("Đã giao hàng");
				$scope.initianlize();
			})
		}else if(order.status == "Chưa thanh toán"){
			order.status = "Đã giao hàng";
			$http.post(`/rest/orders/trangthai`,order).then(resp => {
				alert("Đã giao hàng");
				$scope.initianlize();
			})
		}else{
			alert("Đơn hàng đã giao")
		}
	}
	$scope.dathanhtoan = function(id) {
		var order = this.items.find(order => order.id == id);
		if (order.status == "Hủy đơn hàng"){
			alert("Đã hủy đơn hàng")
		}
		else if (order.status == "Chưa thanh toán"){
			order.status = "Đã thanh toán";
			$http.post(`/rest/orders/trangthai`,order).then(resp => {
				alert("Đơn hàng Đã thanh toán");
				$scope.initianlize();
			})
		}else if(order.status == "Đã giao hàng"){
			alert("Đơn hàng đã giao")
		}else{
			alert("Đơn hàng đã thanh toán")
		}
	}
	
	
	
	
	
	//Xóa sản phẩm
	$scope.delete1 = function(item) {
		$http.delete(`/rest/orders/${item.id}`).then(resp => {
			var index = $scope.items.findIndex(p => p.id == item.id);
			$scope.items.splice(index, 1);
			alert("Xóa sản phẩm thành công!");
			location.reload();
		})
			.catch(error => {
				alert("Lỗi xóa sản phẩm!");
				console.log("Error", error);
			})
	}
	$scope.chitietdon = function(item){
		$http.get(`/rest/orderdetail/findname/${item}`).then(resp => {
			$scope.item1s = resp.data;
		})
	}
});
