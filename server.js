const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());


var mysqlConnection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'employedb'
});

mysqlConnection.connect((err) => {
  if(!err) {
    console.log('Db conn succeded');
  }else {
    console.log('DB conn failed \n Error : ' + JSON.stringify(err, undefined, 2));
  }
})

app.get('/api/products', (req, res) => {
      mysqlConnection.query("SELECT * FROM products", function (err, result, fields) {
      if (err) throw err;
      res.json(result);
      res.end();
    });
});

//show single product
app.get('/api/products/:id', function (req, res) {

  mysqlConnection.query("SELECT * FROM products WHERE id="+req.params.id, function (err, result, fields){
    if(err) throw err; 
    res.json(result);
    console.log(result);
  });
});

//add new product
app.post('/api/products',(req, res) => {
  let data = {name: req.body.name,description: req.body.description,longdescription: req.body.longdescription, price: req.body.price};
  let sql = "INSERT INTO products SET ?";
  let query = mysqlConnection.query(sql, data,(err, result) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": result}));
  });
});
 
//update product
app.put('/api/products/:id',(req, res) => {
  let sql = "UPDATE products SET name='"+req.body.name+"', price='"+req.body.price+"' WHERE id="+req.params.id;
  let query = mysqlConnection.query(sql, (err, result) => {
    if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": result}));
  });
});
 
//Delete product
app.delete('/api/products/:id',(req, res) => {
  let sql = "DELETE FROM products WHERE product_id="+req.params.id+"";
  let query = mysqlConnection.query(sql, (err, result) => {
    if(err) throw err;
      res.send(JSON.stringify({"status": 200, "error": null, "response": result}));
  });
});

const port = 5000;

app.listen(port, () => `Server running on port ${port}`);

