const express = require('express');
var exec = require('child_process').exec;

const app = express();

async function sleep(ms) {
  return new Promise(r => setTimeout(r, ms));
}

app.get('/build', async (req, res) => {
  console.log('building...');
  console.log(req.query);
  
//  await sleep(2000);
  exec(`./run_test.sh ${req.query.browser} ${req.query.job}`, function(error, stdout, stderr) {
    // シェル上でコマンドを実行できなかった場合のエラー処理
    if (error !== null) {
      console.log('exec error: ' + error);
      res.status(200)
        .send("<<<FAILED>>>\n" + stdout);
      return;
    }

    // シェル上で実行したコマンドの標準出力が stdout に格納されている
    console.log('completed building!');
    console.log(stdout);
    res.status(200)
        .send("<<<SUCCEED>>>\n" + stdout);
  });
});

app.listen(3000);
