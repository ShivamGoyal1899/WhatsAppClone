class StatusModel {
  final String name;
  final String time;
  final String avatarUrl;

  StatusModel({this.name, this.time, this.avatarUrl});
}

List<StatusModel> dummyData = [
  new StatusModel(
    name: "My status",
    time: "Tap to add status update",
    avatarUrl:
    "https://images.unsplash.com/photo-1519742866993-66d3cfef4bbd?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
  ),
];

List<StatusModel> dummyData_1 = [
  new StatusModel(
    name: "Timo Stern",
    time: "Yesterday, 10:32 pm",
    avatarUrl:
    "https://images.unsplash.com/photo-1484588168347-9d835bb09939?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60",
  ),
];
