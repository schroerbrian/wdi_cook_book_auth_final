app = angular.module("Admin", ["ngResource"])

app.factory "User", ["$resource", ($resource) ->
  $resource("/users/:id", {id: "@id"}, {update: {method: "PUT"}})
]

@UserCtrl = ["$scope", "User", ($scope, User) ->
  $scope.users = User.query()
  $scope.test = "1 2 3"
]
