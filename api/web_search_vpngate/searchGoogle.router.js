
const router = require("express").Router();
const pool = require("../../config/database");
const {
    login,
} = require("./searchGoogle.controller.js");

const jsdom = require('jsdom')
const dom = new jsdom.JSDOM("")
const jquery = require('jquery')(dom.window)

const searchGoogle = require('./searchGoogle.controller.js');
router.get('/search', (request, response) => {
    const params = request.params.search;
    if (params == null) {
        searchGoogle(params)
        .then(results => {
            response.status(200);
            response.json(results);
            // return
            queryPromise1 = () =>{
                return new Promise((resolve, reject)=>{
                    pool.query('select id,country,hostname,ipaddress from vpngate',  (error, results)=>{
                        if(error){
                            return reject(error);
                        }
                        jsonobj=JSON.parse(JSON.stringify(results))
                        return resolve(jsonobj);
                    });
                });
            }
            async function sequentialQueries () {
                const resultdb = await queryPromise1();
                // console.log("querypromiseResultfromDB",resultdb)
                DbAllOnlyIpsDataArr=[];
                DB=resultdb.forEach (db => {
                    DbAllOnlyIpsDataArr.push(db.ipaddress)
                });
                console.log("db_all_ips",DbAllOnlyIpsDataArr);
                SiteAllDataArr=[];
                SITE=results.forEach (site => {
                    SiteAllDataArr.push(site)
                });
                // console.log("site_alldata",SiteAllDataArr)
                uniqueNewResults=[];
                jquery.each(SiteAllDataArr, function(i, elm_site){
                    if(jquery.inArray(elm_site['ipaddress'], DbAllOnlyIpsDataArr) === -1) uniqueNewResults.push(elm_site);
                });
                // console.log("uniquelinks",uniqueNewResults);
                if (uniqueNewResults.length === 0){
                    console.log("same record scrapped");
                    return
                }
                else{
                    console.log("not same, new results found")
                    // inserting new unique results in db
                    uniqueNewResults.forEach(result => {
                        pool.query(
                            `insert into vpngate(country,countryflag,hostname,ipaddress,vpnsessions,users,linequality,ping,score,ovpnfilelink,ovpndownloadpath) 
                            values(?,?,?,?,?,?,?,?,?,?,?)`,
                            [
                                `${[result.country]}`,
                                `${[result.countryflag]}`,
                                `${[result.hostname]}`,
                                `${[result.ipaddress]}`,
                                `${[result.vpnsessions]}`,
                                `${[result.users]}`,
                                `${[result.linequality]}`,
                                `${[result.ping]}`,
                                `${[result.score]}`,
                                `${[result.ovpnfilelink]}`,
                                `${[result.ovpndownloadpath]}`
                            ],
                            (error, results, fields) => {
                                if (error) {
                                    console.log(error);
                                }
                                return (null, results);
                            }
                            );
                        });
                        
                        // testing db all ips if working
                        dbWorkingIpsArr=[]
                        queryPromise1 = async() =>{
                            return new Promise((resolve, reject)=>{
                                DbAllOnlyIpsDataArr.forEach(async function (ipaddress,i) {
                                    // console.log("i",i)
                                    //   console.log("lll",DbAllOnlyIpsDataArr.length)
                                    exec = require('child_process').exec;
                                    var pingCmd = "ping " + ipaddress;
                                    var result = '';
                                    var resultsip=exec(pingCmd, puts);
                                    function puts(error, stdout, stderr) {
                                        if (error) {
                                            console.log("Error pinging");
                                        }
                                        else {
                                            dbWorkingIpsArr.push(ipaddress);
                                            // console.log("s",dbWorkingIpsArr);
                                            if (i == DbAllOnlyIpsDataArr.length-1 || i == DbAllOnlyIpsDataArr.length-2 || i == DbAllOnlyIpsDataArr.length-3 || i == DbAllOnlyIpsDataArr.length-4 || i == DbAllOnlyIpsDataArr.length-5 ) {
                                                return resolve(dbWorkingIpsArr);
                                            }
                                        }
                                    }
                                });
                            });
                        }
                        var DbAllWorkingIpsArr = await queryPromise1();
                        console.log("DbAllWorkingIpsArr",DbAllWorkingIpsArr);
                        
                        const filteredIpsNotworkinginDb = DbAllOnlyIpsDataArr.filter((f) => !DbAllWorkingIpsArr.includes(f))
                        console.log("filteredIpsNotworkinginDb", filteredIpsNotworkinginDb);
                        
                        // deleteing not working files from storage
                        const fs = require('fs');
                        filteredIpsNotworkinginDb.forEach((ip , index) => {
                            var filePath = `./files/${ip}.ovpn`; 
                            fs.unlinkSync(filePath);
                        });
                        
                        // deleting not working ips record from db
                        filteredIpsNotworkinginDb.forEach(result => {
                            pool.query(
                                `delete from vpngate where ipaddress = ?`,
                                [ `${[result]}`],
                                (error, results, fields) => {
                                    if (error) {
                                        console.log(error);
                                    }
                                    return (null, results);
                                }
                                );
                            });
                        
                            
                        }
                    }
                    var execute= sequentialQueries();    
                    
                    
                });
            } else {
                response.end();
            }
        });
        //   router.get('/search', searchGoogle);
        module.exports = router;
        
        
        
        
        
        