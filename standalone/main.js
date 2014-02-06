var express = require('express');

app = express();
app.use(express.static(__dirname));

app.listen(8081, function(){
  console.log("Run your tests at: http://localhost:8081");
});
