// Home Page Implementation
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String userName = "User"; // Replace with actual user data

    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Hello, $userName',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Placeholder for community posts
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text('Post ${index + 1}'),
                      subtitle: Text('This is a community post description.'),
                      trailing: Icon(Icons.comment),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}