app.controller("product-ctrl", function($scope, $http) {
	$scope.items = [];
	$scope.cates = [];
	$scope.form = {};
	$scope.form.product={id : ""};
	$scope.form.productdetail={id : ""};

	$scope.initialize = function() {
		//load products
		$http.get("/rest/products").then(resp => {
			$scope.items = resp.data;
			$scope.items.forEach(item => {
				item.createDate = new Date(item.createDate)
			})
		});

		//load categories
		$http.get("/rest/catesmall").then(resp => {
			$scope.catesmall = resp.data;
		});
	}
	//Khởi đầu
	$scope.initialize();
	//Xóa form
	$scope.reset = function() {
		$scope.form = {
			createDate: new Date(),
			image: 'cloud-upload.jpg',
			avaliable: true,
		};
	}
	$scope.reset1 = function() {
		$scope.form.height = "";
		$scope.form.weight = "";
		$scope.form.color = "";
		$scope.form.size = "";
		$scope.form.quantity = "";
	}
	//Hiển thị lên form
	$scope.edit = function(item) {
		$scope.form = angular.copy(item);
		$(".nav-tabs a:eq(0)").tab('show')
	}
	$scope.nut = false;
	//Thêm sản phẩm mới
	$scope.create = function() {
		var item = angular.copy($scope.form);
		$http.post(`/rest/products`, item).then(resp => {
			resp.data.createDate = new Date(resp.data.createDate)
			$scope.items.push(resp.data);
			//$scope.reset();
			alert("Thêm mới sản phẩm thành công!");
			//item = resp.data;
			//location.href = "/assets/admin/index.html#!/detail";
			
			item = resp.data;
			$scope.form.product.id = item.id;
			
                $scope.productDt = true;
				$scope.nutde = true;
				$scope.nut = true;
					
		}).catch(error => {
			alert("Lỗi thêm mới sản phẩm!");
			console.log("Error", error);
		});
	}
	
	$scope.addpro = function() {
		var item = angular.copy($scope.form);
		var height = document.getElementById("height").value;
		var weight = document.getElementById("weight").value;
		var color = document.getElementById("color").value;
		var size = document.getElementById("size").value;
		var quantity = document.getElementById("quantity").value;
		
		if(height == "" || weight == "" || color == "" ||
		   size == "" || quantity == "" ){
			alert("Không được bỏ trống form");
		}
		else{
			$http.post(`/rest/productDetails`, item).then(resp => {
				$scope.items.push(resp.data);
				$scope.reset1();
				alert("Thêm mới detail thành công!");
				proid = resp.data;
				$scope.form.productdetail.id = proid.id;
				
				$scope.anh = true;
				$scope.nutan = true;
					
			}).catch(error => {
				alert("Lỗi thêm mới detail!");
				console.log("Error", error);
			});
			
			
		}
	}
	
	
	$scope.addanh = function() {
	var item = angular.copy($scope.form);					
		$http.post(`/rest/images`, item).then(resp => {
			$scope.items.push(resp.data);
			alert("Thêm mới Image thành công!");
		
		}).catch(error => {
			alert("Lỗi thêm mới Image!");
			console.log("Error", error);
		});
	}
	
	
	
	$scope.huy = function() {
			$scope.reset();
			$scope.productDt = false;
			$scope.nut = false;
			$scope.nutde = false;
			$scope.nutan = false;
		}
	
	
	//Cập nhật sản phẩm
	$scope.update = function() {
		var item = angular.copy($scope.form);
		$http.put(`/rest/products/${item.id}`, item).then(resp => {
			var index = $scope.items.findIndex(p => p.id == item.id);
			$scope.items[index] = item;
			alert("Cập nhật sản phẩm thành công!");
		})
			.catch(error => {
				alert("Lỗi cập nhật sản phẩm!");
				console.log("Error", error);
			});
	}
	//Xóa sản phẩm
	$scope.delete = function(item) {
		$http.delete(`/rest/products/${item.id}`).then(resp => {
			var index = $scope.items.findIndex(p => p.id == item.id);
			$scope.items.splice(index, 1);
			$scope.reset();
			alert("Xóa sản phẩm thành công!");
		})
			.catch(error => {
				alert("Lỗi xóa sản phẩm!");
				console.log("Error", error);
			})
	}
	//Upload hình
	$scope.imageChanged = function(files) {
		var data = new FormData();
		data.append('file', files[0]);
		$http.post('/rest/upload/images', data, {
			transformRequest: angular.identity,
			headers: { 'Content-Type': undefined }
		}).then(resp => {
			$scope.form.image = resp.data.name;
		}).catch(error => {
			alert("Lỗi upload hình ảnh");
			console.log("Error", error);
		});
	}
	
	
	
	$scope.pager = {
		page: 0,
		size: 10,
		get items() {
			var start = this.page * this.size;
			return $scope.items.slice(start, start + this.size);
		},
		get count() {
			return Math.ceil(1.0 * $scope.items.length / this.size);
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
	
	$scope.findName = function(){
		var item = angular.copy($scope.form);
		$http.get(`/rest/products/findname/${item.name}`).then(resp => {
			$scope.items = angular.copy(resp.data);
			$scope.reset();
		})
	}
	
	$scope.findPrice = function(){
		var item = angular.copy($scope.form);
		$http.get(`/rest/products/findprice/${item.price}`).then(resp => {
			$scope.items = angular.copy(resp.data);
			$scope.reset();
		})
	}
	
	
});