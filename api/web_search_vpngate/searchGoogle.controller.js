const puppeteer = require('puppeteer');
const {
  create,
} = require("./searchGoogle.service");


// const path=require('path');
// let twoStepBack=path.join(__dirname,'../../files/');
// console.log(twoStepBack);
const searchGoogle = async (params) => {
  const browser = await puppeteer.launch({
    executablePath: 'C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe',
    ignoreHTTPSErrors: true,
    headless: true,
    devtools: false,
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  });
  var page = await browser.newPage();
  await page.setViewport({ width: 1920, height: 1080 });
  await page.goto('https://www.vpngate.net/en/');
  await page.waitForTimeout(2000);
  // await page.evaluate(scrollToBottom);
  async function scrollToBottom() {
    let finishTime = new Date().getTime() + (1 * 60 * 1000);
    await new Promise(resolve => {
      const distance = 100; 
      const delay = 50;
      const timer = setInterval(() => {
        document.scrollingElement.scrollBy(0, distance);
        if (document.scrollingElement.scrollTop + window.innerHeight >= document.scrollingElement.scrollHeight || new Date().getTime() > finishTime) {
          clearInterval(timer);
          resolve();
        }
      }, delay);
    });
  }
  
  console.log("started");
  page.on('console', msg => console.log(msg.text()));
  let searchResults = await page.evaluate (async() => {
    scrapeItems = [];
    let alldivss =  document.body.querySelectorAll('table#vg_hosts_table_id')[2].querySelectorAll('tr');
    alldivss.forEach (item => {
      if(item.querySelectorAll('td')[0].innerText.includes('(Physical location)')) {
        return
      }
      let countries = item.querySelectorAll('td')[0];
      let country= countries.innerText.trim();
      
      let countriesflag = item.querySelectorAll('td')[0];
      let countryflag= countriesflag.firstChild.src;
      
      let hostnames = item.querySelectorAll('td')[1];
      let hostnameext= hostnames.innerText.trim()
      const hostname = hostnameext.substring(0, hostnameext.indexOf('\n'));
      
      let ipaddresses = item.querySelectorAll('td')[1];
      let ipaddressext= ipaddresses.innerText.trim().split('\n');
      const ipaddress = ipaddressext[1];
      
      let sessions = item.querySelectorAll('td')[2];
      let sessionext= sessions.innerText.trim().split('\n');
      const session = sessionext[0];
      
      let users = item.querySelectorAll('td')[2];
      let usersext= users.innerText.trim().split('\n');
      const user = usersext[2];
      
      let linequalities = item.querySelectorAll('td')[3];
      let linequalityext= linequalities.innerText.trim().split('\n');
      const linequality = linequalityext[0];
      let pings = item.querySelectorAll('td')[3];
      let pingext= pings.innerText.trim().split('\n');
      const ping = pingext[1].substring(6);
      
      let ovpn = item.querySelectorAll('td')[6].firstChild ?  item.querySelectorAll('td')[6].firstChild.href :false
      
      let scores = item.querySelectorAll('td')[9];
      let score= scores.innerText.trim();
      scrapeItems.push ({
        country:country,
        countryflag:countryflag,
        hostname:hostname,
        ipaddress:ipaddress,
        vpnsessions:session,
        users:user,
        linequality:linequality,
        ovpn:ovpn,
        ping:ping,
        score:score,
      })
    });
    return scrapeItems;
  });
  // console.log("firstpage",searchResults);
  //return
  var workingipsarr=[]
  queryPromise1 = async() =>{
    return new Promise((resolve, reject)=>{
      searchResults.forEach(async function (searchResult,i) {
        // console.log(i)
        exec = require('child_process').exec;
        var pingCmd = "ping " + searchResult.ipaddress;
        var result = '';
        var resultsip=exec(pingCmd, puts);
        function puts(error, stdout, stderr) {
          if (error) {
            console.log("Error pinging");
          }
          else {
            // console.log("b",i);
            // console.log("c",searchResults.length-1);
            console.log("successful ips");
            // console.log("detailsresult",stdout)
            workingipsarr.push(searchResult.ipaddress);
            // console.log("s",workingipsarr);
            if (i == searchResults.length-1 || i == searchResults.length-2 || i == searchResults.length-3 || i == searchResults.length-4 || i == searchResults.length-5) {
              return resolve(workingipsarr);
            }
          }
        }
      });
      
    });
  }
  var workingIpsInSiteSearchResults = await queryPromise1();
  // console.log("workingIpsInSiteSearchResults",workingIpsInSiteSearchResults);
  // return
  let filteredSearchResultsWithWorkingIps = searchResults.filter((f) => workingIpsInSiteSearchResults.includes(f.ipaddress))
  // console.log("filteredSearchResultsWithWorkingIps",filteredSearchResultsWithWorkingIps)
  //return
  ///////////////////////////////////////////for next page scraping////////////////////////////////////////////
  let nextpagelinks=[]
  filteredSearchResultsWithWorkingIps.forEach(function (searchResult) {
    nextpagelinks.push(searchResult.ovpn)
  });
  // console.log("nextpagelinks",nextpagelinks);
  // return
  let datafromnextpageObjArr=[]
  for(let link of nextpagelinks){
    const newPage = await browser.newPage();
    await newPage.setViewport({ width: 1920, height: 1080 });
    await newPage.setRequestInterception(true);
    newPage.on('request', (req) => {
      if(req.resourceType() == 'stylesheet' || req.resourceType() == 'font' || req.resourceType() == 'image'){
        req.abort();
      }
      else {
        req.continue();
      }
    });
    if (link== false){
      datafromnextpageObjArr.push({ovpnfilelink:"false"})
    }
    else{
      await newPage.goto(link);
      const searchResultsnextpage = await newPage.evaluate(() => {
        const ovpnfilelink = document.querySelector('ul.listBigArrow > li > a').href;
        return (searchdata = {
          ovpnfilelink,
        });
      });
      datafromnextpageObjArr.push(searchResultsnextpage)
    }
    await newPage.close()
  }
  // console.log("2nd page",datafromnextpageObjArr);
  // return
  let prefinalresultObjMap = filteredSearchResultsWithWorkingIps.map((item, i) => Object.assign({}, item, datafromnextpageObjArr[i])); 
  // console.log("prefinalresultObjMap", prefinalresultObjMap);
  // return
  var ovpndownloadpathObjArr=[];
  var https = require('https');
  const fs = require('fs');
  prefinalresultObjMap.forEach((url , index) => {
    filename=`${url.ipaddress}.ovpn`
    ovpndownloadpath='https://vpn.funsdevops.com/files/'+filename
    ovpndownloadpathObjArr.push({ovpndownloadpath});
    // console.log(website);
    if (url.ovpnfilelink== "false"){
      // console.log("workingaipWithnofile",url.ipaddress);
      fs.createWriteStream(`./files/${url.ipaddress}.ovpn`);
    }
    else{
      https.get(url.ovpnfilelink, res => {
        const stream = fs.createWriteStream(`./files/${url.ipaddress}.ovpn`);
        res.pipe(stream);
        stream.on('finish', () => {
          stream.close();
        })
      })
    }
  });
  // console.log("ovpndownloadpathObjArr", ovpndownloadpathObjArr);
  // return
  let finalresultObjMap = filteredSearchResultsWithWorkingIps.map((item, i) => Object.assign({}, item, datafromnextpageObjArr[i], ovpndownloadpathObjArr[i])); 
  // console.log("finalresultObjMap", finalresultObjMap);
  // return
  // console.log("1st page",searchResults);
  // console.log("workingIpsInSiteSearchResults",workingIpsInSiteSearchResults);
  // console.log("filteredSearchResultsWithWorkingIps",filteredSearchResultsWithWorkingIps)
  // console.log("nextpagelinks",nextpagelinks);
  // console.log("2nd page",datafromnextpageObjArr);
  // console.log("prefinalresultObjMap", prefinalresultObjMap);
  // console.log("ovpndownloadpathObjArr", ovpndownloadpathObjArr);
  // console.log("finalresultObjMap", finalresultObjMap);
  await browser.close();
  console.log("end");
  return finalresultObjMap
};
// setTimeout(searchGoogle, 300000); /* start scraping 5m */
module.exports = searchGoogle;
