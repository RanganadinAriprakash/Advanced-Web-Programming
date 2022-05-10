const http = require('http');

const server = http.createServer((req, res) => {
    console.log("Here's the response from the server!");
})
server.listen(process.env.PORT||3000);