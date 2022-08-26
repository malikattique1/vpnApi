


CREATE TABLE `vpngate` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `country` varchar(60) DEFAULT NULL,
  `countryflag` varchar(100) NOT NULL,
  `countrycode` varchar(60) DEFAULT NULL,
  `regionname` varchar(60) DEFAULT NULL,
  `hostname` varchar(60) NOT NULL,
  `ipaddress` varchar(255) NOT NULL,
  `vpnsessions` varchar(100) NOT NULL,
  `users` varchar(100) NOT NULL,
  `linequality` varchar(100) NOT NULL,
  `ping` varchar(60) NOT NULL,
  `score` varchar(100) NOT NULL,
  `ovpnfilelink` varchar(255) NOT NULL,
  `portno` varchar(100) DEFAULT NULL,
  `totaldownloads` varchar(100) NOT NULL DEFAULT '0',
  `createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4;


INSERT INTO vpngate VALUES
("2","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-68.opengw.net","219.100.37.17","131 sessions","Total 5,433,549 users","233.52 Mbps","25 ms","1,667,998","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=public-vpn-68.opengw.net&port=1195&hid=15094256&/vpngate_public-vpn-68.opengw.net_udp_1195.ovpn","","0","2022-08-25 17:10:41",""),
("3","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-135.opengw.net","219.100.37.93","77 sessions","Total 4,132,126 users","931.00 Mbps","24 ms","1,609,000","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=public-vpn-135.opengw.net&port=1195&hid=15094325&/vpngate_public-vpn-135.opengw.net_udp_1195.ovpn","","0","2022-08-25 17:10:41",""),
("4","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn786638753.opengw.net","39.114.9.115","30 sessions","Total 59,804 users","93.02 Mbps","36 ms","1,357,309","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn786638753.opengw.net&port=1378&hid=18967426&/vpngate_vpn786638753.opengw.net_udp_1378.ovpn","","0","2022-08-25 17:10:41",""),
("5","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-248.opengw.net","219.100.37.157","69 sessions","Total 4,321,186 users","128.38 Mbps","12 ms","1,387,119","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&tcp=1&host=public-vpn-248.opengw.net&port=443&hid=15134996&/vpngate_public-vpn-248.opengw.net_tcp_443.ovpn","","0","2022-08-25 17:10:41",""),
("6","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-192.opengw.net","219.100.37.209","303 sessions","Total 9,796,403 users","162.00 Mbps","12 ms","1,287,554","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=public-vpn-192.opengw.net&port=1195&hid=15134939&/vpngate_public-vpn-192.opengw.net_udp_1195.ovpn","","0","2022-08-25 17:10:41",""),
("7","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-74.opengw.net","219.100.37.26","51 sessions","Total 3,496,293 users","130.56 Mbps","25 ms","1,140,306","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&tcp=1&host=public-vpn-74.opengw.net&port=443&hid=15094264&/vpngate_public-vpn-74.opengw.net_tcp_443.ovpn","","0","2022-08-25 17:10:41",""),
("8","United States","https://www.vpngate.net/images/flags/US.png","","","vpn591814087.opengw.net","139.180.147.96","63 sessions","Total 402,672 users","923.78 Mbps","1 ms","1,131,310","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn591814087.opengw.net&port=1194&hid=18757792&/vpngate_vpn591814087.opengw.net_udp_1194.ovpn","","0","2022-08-25 17:10:41",""),
("9","United States","https://www.vpngate.net/images/flags/US.png","","","vpn431396938.opengw.net","173.198.248.39","126 sessions","Total 861,255 users","69.76 Mbps","4 ms","1,125,341","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn431396938.opengw.net&port=443&hid=18833185&/vpngate_vpn431396938.opengw.net_udp_443.ovpn","","0","2022-08-25 17:10:41",""),
("10","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-194.opengw.net","219.100.37.210","98 sessions","Total 6,482,861 users","288.81 Mbps","24 ms","2,383,131","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=public-vpn-194.opengw.net&port=1195&hid=15134941&/vpngate_public-vpn-194.opengw.net_udp_1195.ovpn","","0","2022-08-25 17:10:41",""),
("11","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-48.opengw.net","219.100.37.12","443 sessions","Total 9,127,692 users","391.21 Mbps","17 ms","1,806,749","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=public-vpn-48.opengw.net&port=1195&hid=15074633&/vpngate_public-vpn-48.opengw.net_udp_1195.ovpn","","0","2022-08-25 17:10:41",""),
("12","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-219.opengw.net","219.100.37.183","99 sessions","Total 5,556,247 users","206.91 Mbps","14 ms","1,758,747","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=public-vpn-219.opengw.net&port=1195&hid=15134966&/vpngate_public-vpn-219.opengw.net_udp_1195.ovpn","","0","2022-08-25 17:10:41",""),
("13","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-240.opengw.net","219.100.37.221","83 sessions","Total 5,411,100 users","142.52 Mbps","27 ms","1,499,679","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&tcp=1&host=public-vpn-240.opengw.net&port=443&hid=15134988&/vpngate_public-vpn-240.opengw.net_tcp_443.ovpn","","0","2022-08-25 17:10:41",""),
("14","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-252.opengw.net","219.100.37.175","163 sessions","Total 6,387,608 users","144.88 Mbps","8 ms","2,473,726","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&tcp=1&host=public-vpn-252.opengw.net&port=443&hid=15135000&/vpngate_public-vpn-252.opengw.net_tcp_443.ovpn","","0","2022-08-25 17:10:41",""),
("16","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-100.opengw.net","219.100.37.57","200 sessions","Total 9,252,311 users","135.96 Mbps","28 ms","1,507,899","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&tcp=1&host=public-vpn-100.opengw.net&port=443&hid=15094291&/vpngate_public-vpn-100.opengw.net_tcp_443.ovpn","","0","2022-08-25 17:10:41",""),
("19","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn777148929.opengw.net","126.34.156.64","35 sessions","Total 395,043 users","373.99 Mbps","4 ms","1,031,519","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn777148929.opengw.net&port=1518&hid=15719052&/vpngate_vpn777148929.opengw.net_udp_1518.ovpn","","0","2022-08-25 17:10:41",""),
("20","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn385824250.opengw.net","220.121.89.220","32 sessions","Total 46,406 users","351.18 Mbps","29 ms","1,003,466","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn385824250.opengw.net&port=1622&hid=17768593&/vpngate_vpn385824250.opengw.net_udp_1622.ovpn","","0","2022-08-25 17:10:41",""),
("21","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn174431026.opengw.net","223.135.246.116","41 sessions","Total 11,942 users","673.65 Mbps","2 ms","816,008","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn174431026.opengw.net&port=1207&hid=19030925&/vpngate_vpn174431026.opengw.net_udp_1207.ovpn","","0","2022-08-25 17:10:41",""),
("23","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn688826902.opengw.net","220.94.150.245","13 sessions","Total 289,476 users","69.22 Mbps","30 ms","683,662","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn688826902.opengw.net&port=1710&hid=15781995&/vpngate_vpn688826902.opengw.net_udp_1710.ovpn","","0","2022-08-25 17:10:41",""),
("24","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn846738029.opengw.net","126.203.118.105","9 sessions","Total 49,608 users","88.92 Mbps","5 ms","653,301","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn846738029.opengw.net&port=1256&hid=15965098&/vpngate_vpn846738029.opengw.net_udp_1256.ovpn","","0","2022-08-25 17:10:41",""),
("25","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn364681554.opengw.net","126.34.176.124","13 sessions","Total 1,505,414 users","82.38 Mbps","17 ms","642,937","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn364681554.opengw.net&port=1581&hid=7512440&/vpngate_vpn364681554.opengw.net_udp_1581.ovpn","","0","2022-08-25 17:10:41",""),
("26","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn263362132.opengw.net","126.94.144.70","1 sessions","Total 60,507 users","264.26 Mbps","15 ms","641,398","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn263362132.opengw.net&port=1317&hid=15885103&/vpngate_vpn263362132.opengw.net_udp_1317.ovpn","","0","2022-08-25 17:10:41",""),
("27","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn493080482.opengw.net","112.165.223.11","5 sessions","Total 6,564 users","85.40 Mbps","27 ms","605,949","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn493080482.opengw.net&port=1323&hid=18741999&/vpngate_vpn493080482.opengw.net_udp_1323.ovpn","","0","2022-08-25 17:10:41",""),
("28","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn423179618.opengw.net","126.235.60.86","6 sessions","Total 91,455 users","534.58 Mbps","3 ms","611,424","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn423179618.opengw.net&port=1967&hid=15858093&/vpngate_vpn423179618.opengw.net_udp_1967.ovpn","","0","2022-08-25 17:10:41",""),
("29","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn350691097.opengw.net","59.15.19.60","16 sessions","Total 156,675 users","292.22 Mbps","31 ms","586,423","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn350691097.opengw.net&port=1727&hid=18065016&/vpngate_vpn350691097.opengw.net_udp_1727.ovpn","","0","2022-08-25 17:10:41",""),
("30","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn596458121.opengw.net","58.225.196.164","8 sessions","Total 132 users","60.24 Mbps","36 ms","583,136","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn596458121.opengw.net&port=1715&hid=18993277&/vpngate_vpn596458121.opengw.net_udp_1715.ovpn","","0","2022-08-25 17:10:41",""),
("31","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn924957864.opengw.net","125.135.140.130","6 sessions","Total 2,236 users","95.49 Mbps","23 ms","581,159","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn924957864.opengw.net&port=1396&hid=18361435&/vpngate_vpn924957864.opengw.net_udp_1396.ovpn","","0","2022-08-25 17:10:41",""),
("32","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn983414958.opengw.net","114.203.114.74","16 sessions","Total 1,145 users","341.72 Mbps","37 ms","575,228","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn983414958.opengw.net&port=1584&hid=19207654&/vpngate_vpn983414958.opengw.net_udp_1584.ovpn","","0","2022-08-25 17:10:41",""),
("33","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn291873116.opengw.net","219.251.151.170","9 sessions","Total 1,112 users","250.02 Mbps","32 ms","574,282","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn291873116.opengw.net&port=1195&hid=19110205&/vpngate_vpn291873116.opengw.net_udp_1195.ovpn","","0","2022-08-25 17:10:41",""),
("34","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn663956788.opengw.net","211.207.140.62","2 sessions","Total 652 users","276.03 Mbps","33 ms","571,140","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn663956788.opengw.net&port=1574&hid=19162187&/vpngate_vpn663956788.opengw.net_udp_1574.ovpn","","0","2022-08-25 17:10:41",""),
("35","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn978115361.opengw.net","211.57.249.25","1 sessions","Total 1,964 users","284.30 Mbps","24 ms","568,412","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn978115361.opengw.net&port=1336&hid=18949716&/vpngate_vpn978115361.opengw.net_udp_1336.ovpn","","0","2022-08-25 17:10:41",""),
("38","Viet Nam","https://www.vpngate.net/images/flags/VN.png","","","vpn166935686.opengw.net","1.52.5.119","10 sessions","Total 37,826 users","37.09 Mbps","36 ms","562,026","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn166935686.opengw.net&port=1579&hid=17434094&/vpngate_vpn166935686.opengw.net_udp_1579.ovpn","","0","2022-08-25 17:10:41",""),
("40","United States","https://www.vpngate.net/images/flags/US.png","","","vpn608149978.opengw.net","76.135.114.211","67 sessions","Total 19,295 users","336.96 Mbps","24 ms","549,686","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn608149978.opengw.net&port=1566&hid=18287213&/vpngate_vpn608149978.opengw.net_udp_1566.ovpn","","0","2022-08-25 17:10:41",""),
("44","Viet Nam","https://www.vpngate.net/images/flags/VN.png","","","vpn238825926.opengw.net","118.68.68.74","14 sessions","Total 20,059 users","26.07 Mbps","27 ms","537,706","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn238825926.opengw.net&port=1195&hid=18933246&/vpngate_vpn238825926.opengw.net_udp_1195.ovpn","","0","2022-08-25 17:10:41",""),
("46","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn449923869.opengw.net","175.112.92.165","0 sessions","Total 75 users","481.54 Mbps","32 ms","527,898","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661428953633&udp=1&host=vpn449923869.opengw.net&port=1195&hid=19234005&/vpngate_vpn449923869.opengw.net_udp_1195.ovpn","","0","2022-08-25 17:10:41",""),
("56","United States","https://www.vpngate.net/images/flags/US.png","","","vpn719329406.opengw.net","163.182.174.159","121 sessions","Total 519,924 users","46.18 Mbps","4 ms","1,170,174","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661434317428&udp=1&host=vpn719329406.opengw.net&port=1194&hid=18570753&/vpngate_vpn719329406.opengw.net_udp_1194.ovpn","","0","2022-08-25 18:43:39",""),
("61","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn688612027.opengw.net","211.49.193.148","5 sessions","Total 27,704 users","95.22 Mbps","33 ms","540,350","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661434317428&udp=1&host=vpn688612027.opengw.net&port=1407&hid=18230833&/vpngate_vpn688612027.opengw.net_udp_1407.ovpn","","0","2022-08-25 18:43:39",""),
("86","United States","https://www.vpngate.net/images/flags/US.png","","","vpn275764283.opengw.net","104.28.225.233","12 sessions","Total 275 users","21.41 Mbps","23 ms","1,518,319","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661440340271&udp=1&host=vpn275764283.opengw.net&port=1250&hid=18474239&/vpngate_vpn275764283.opengw.net_udp_1250.ovpn","","0","2022-08-25 20:17:48",""),
("89","United States","https://www.vpngate.net/images/flags/US.png","","","vpn537213471.opengw.net","104.28.225.233","1 sessions","Total 19,687 users","438.72 Mbps","32 ms","1,635,389","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661440340271&udp=1&host=vpn537213471.opengw.net&port=1971&hid=17726467&/vpngate_vpn537213471.opengw.net_udp_1971.ovpn","","0","2022-08-25 20:17:48",""),
("90","France","https://www.vpngate.net/images/flags/FR.png","","","vpn308177335.opengw.net","142.4.209.6","69 sessions","Total 538,891 users","62.28 Mbps","1 ms","1,575,484","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661440340271&udp=1&host=vpn308177335.opengw.net&port=1195&hid=9278922&/vpngate_vpn308177335.opengw.net_udp_1195.ovpn","","0","2022-08-25 20:17:48",""),
("107","Russian Federation","https://www.vpngate.net/images/flags/RU.png","","","vpn508784622.opengw.net","213.242.3.236","1 sessions","Total 654 users","64.17 Mbps","45 ms","500,625","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661440340271&udp=1&host=vpn508784622.opengw.net&port=1344&hid=18087826&/vpngate_vpn508784622.opengw.net_udp_1344.ovpn","","0","2022-08-25 20:17:48",""),
("108","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn411392174.opengw.net","60.135.218.7","6 sessions","Total 3,457 users","213.70 Mbps","4 ms","644,380","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050468&udp=1&host=vpn411392174.opengw.net&port=1928&hid=18982565&/vpngate_vpn411392174.opengw.net_udp_1928.ovpn","","0","2022-08-25 20:27:13",""),
("109","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn990104953.opengw.net","58.122.16.151","0 sessions","Total 1,271 users","265.02 Mbps","32 ms","530,041","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050483&tcp=1&host=vpn990104953.opengw.net&port=1464&hid=19169102&/vpngate_vpn990104953.opengw.net_tcp_1464.ovpn","","0","2022-08-25 20:27:13",""),
("110","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn125354121.opengw.net","14.6.255.9","11 sessions","Total 25,847 users","718.15 Mbps","36 ms","557,569","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050483&udp=1&host=vpn125354121.opengw.net&port=1195&hid=18991617&/vpngate_vpn125354121.opengw.net_udp_1195.ovpn","","0","2022-08-25 20:27:13",""),
("111","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn114405872.opengw.net","211.213.171.87","1 sessions","Total 3,014 users","73.93 Mbps","29 ms","555,963","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050483&udp=1&host=vpn114405872.opengw.net&port=1280&hid=18475539&/vpngate_vpn114405872.opengw.net_udp_1280.ovpn","","0","2022-08-25 20:27:13",""),
("112","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn751419879.opengw.net","61.77.172.50","9 sessions","Total 128,184 users","99.23 Mbps","33 ms","551,756","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050483&udp=1&host=vpn751419879.opengw.net&port=1600&hid=16262993&/vpngate_vpn751419879.opengw.net_udp_1600.ovpn","","0","2022-08-25 20:27:13",""),
("113","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn321274502.opengw.net","211.248.95.251","6 sessions","Total 49,484 users","92.97 Mbps","30 ms","549,760","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050483&udp=1&host=vpn321274502.opengw.net&port=1782&hid=12405499&/vpngate_vpn321274502.opengw.net_udp_1782.ovpn","","0","2022-08-25 20:27:13",""),
("114","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn800809082.opengw.net","39.119.161.30","4 sessions","Total 233,876 users","68.98 Mbps","35 ms","549,534","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050483&udp=1&host=vpn800809082.opengw.net&port=1195&hid=16000976&/vpngate_vpn800809082.opengw.net_udp_1195.ovpn","","0","2022-08-25 20:27:13",""),
("115","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn904955780.opengw.net","119.207.148.104","5 sessions","Total 1,380 users","102.99 Mbps","32 ms","548,890","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050483&udp=1&host=vpn904955780.opengw.net&port=1465&hid=19135832&/vpngate_vpn904955780.opengw.net_udp_1465.ovpn","","0","2022-08-25 20:27:13",""),
("116","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn398411244.opengw.net","114.206.212.171","5 sessions","Total 16,011 users","225.57 Mbps","35 ms","542,670","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050483&udp=1&host=vpn398411244.opengw.net&port=1620&hid=16001591&/vpngate_vpn398411244.opengw.net_udp_1620.ovpn","","0","2022-08-25 20:27:13",""),
("117","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn186776276.opengw.net","218.158.212.21","4 sessions","Total 1,009 users","211.11 Mbps","27 ms","541,630","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050483&udp=1&host=vpn186776276.opengw.net&port=1264&hid=19207216&/vpngate_vpn186776276.opengw.net_udp_1264.ovpn","","0","2022-08-25 20:27:13",""),
("119","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn810946603.opengw.net","39.124.88.192","6 sessions","Total 22,746 users","202.25 Mbps","32 ms","529,206","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661441050483&udp=1&host=vpn810946603.opengw.net&port=1336&hid=18132135&/vpngate_vpn810946603.opengw.net_udp_1336.ovpn","","0","2022-08-25 20:27:13",""),
("122","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-173.opengw.net","219.100.37.139","179 sessions","Total 7,563,008 users","1,449.96 Mbps","11 ms","3,021,085","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-173.opengw.net&port=443&hid=15134914&/vpngate_public-vpn-173.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("123","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn803155185.opengw.net","131.213.177.155","37 sessions","Total 371,274 users","505.54 Mbps","17 ms","1,417,601","false","","0","2022-08-26 09:23:25",""),
("124","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-58.opengw.net","219.100.37.49","140 sessions","Total 4,756,966 users","1,613.48 Mbps","17 ms","2,733,924","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=public-vpn-58.opengw.net&port=1195&hid=15094245&/vpngate_public-vpn-58.opengw.net_udp_1195.ovpn","","0","2022-08-26 09:23:25",""),
("125","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-189.opengw.net","219.100.37.180","182 sessions","Total 7,492,758 users","275.75 Mbps","31 ms","2,880,242","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-189.opengw.net&port=443&hid=15134936&/vpngate_public-vpn-189.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("126","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-212.opengw.net","219.100.37.149","95 sessions","Total 5,579,107 users","1,044.05 Mbps","13 ms","2,856,263","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-212.opengw.net&port=443&hid=15134959&/vpngate_public-vpn-212.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("127","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-154.opengw.net","219.100.37.121","120 sessions","Total 5,992,044 users","238.96 Mbps","29 ms","2,741,641","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-154.opengw.net&port=443&hid=15094344&/vpngate_public-vpn-154.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("128","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-49.opengw.net","219.100.37.15","102 sessions","Total 4,781,588 users","257.46 Mbps","16 ms","1,340,501","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-49.opengw.net&port=443&hid=15074634&/vpngate_public-vpn-49.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("129","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-156.opengw.net","219.100.37.95","74 sessions","Total 4,295,108 users","665.73 Mbps","15 ms","2,640,487","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-156.opengw.net&port=443&hid=15094346&/vpngate_public-vpn-156.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("130","Taiwan","https://www.vpngate.net/images/flags/TW.png","","","vpn756639971.opengw.net","182.235.231.66","32 sessions","Total 122,050 users","30.22 Mbps","17 ms","1,414,213","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=vpn756639971.opengw.net&port=1338&hid=19006231&/vpngate_vpn756639971.opengw.net_tcp_1338.ovpn","","0","2022-08-26 09:23:25",""),
("131","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-65.opengw.net","219.100.37.82","137 sessions","Total 5,479,932 users","232.55 Mbps","13 ms","1,853,444","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-65.opengw.net&port=443&hid=15094253&/vpngate_public-vpn-65.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("132","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-238.opengw.net","219.100.37.171","216 sessions","Total 5,513,369 users","335.86 Mbps","22 ms","1,991,843","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-238.opengw.net&port=443&hid=15134986&/vpngate_public-vpn-238.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("133","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-67.opengw.net","219.100.37.84","35 sessions","Total 4,043,182 users","313.47 Mbps","22 ms","2,705,309","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-67.opengw.net&port=443&hid=15094255&/vpngate_public-vpn-67.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("134","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-217.opengw.net","219.100.37.199","76 sessions","Total 4,578,277 users","274.15 Mbps","10 ms","1,723,492","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-217.opengw.net&port=443&hid=15134964&/vpngate_public-vpn-217.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("135","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn853436685.opengw.net","210.99.117.168","40 sessions","Total 143,454 users","186.77 Mbps","31 ms","1,339,110","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn853436685.opengw.net&port=1195&hid=18992785&/vpngate_vpn853436685.opengw.net_udp_1195.ovpn","","0","2022-08-26 09:23:25",""),
("136","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn741739129.opengw.net","211.180.247.205","27 sessions","Total 1,091,174 users","86.01 Mbps","36 ms","1,328,257","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn741739129.opengw.net&port=1833&hid=16072742&/vpngate_vpn741739129.opengw.net_udp_1833.ovpn","","0","2022-08-26 09:23:25",""),
("137","Japan","https://www.vpngate.net/images/flags/JP.png","","","public-vpn-187.opengw.net","219.100.37.179","222 sessions","Total 7,373,385 users","522.16 Mbps","30 ms","1,216,056","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&tcp=1&host=public-vpn-187.opengw.net&port=443&hid=15134933&/vpngate_public-vpn-187.opengw.net_tcp_443.ovpn","","0","2022-08-26 09:23:25",""),
("138","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn413475329.opengw.net","115.88.91.94","21 sessions","Total 141,987 users","31.59 Mbps","51 ms","1,203,690","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn413475329.opengw.net&port=1853&hid=12767361&/vpngate_vpn413475329.opengw.net_udp_1853.ovpn","","0","2022-08-26 09:23:25",""),
("139","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn612282053.opengw.net","1.228.94.131","18 sessions","Total 24,975 users","7.48 Mbps","55 ms","1,035,807","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn612282053.opengw.net&port=1921&hid=18479415&/vpngate_vpn612282053.opengw.net_udp_1921.ovpn","","0","2022-08-26 09:23:25",""),
("140","United States","https://www.vpngate.net/images/flags/US.png","","","vpn860657079.opengw.net","207.148.112.140","47 sessions","Total 435,750 users","3,756.60 Mbps","1 ms","1,090,048","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn860657079.opengw.net&port=1194&hid=18757525&/vpngate_vpn860657079.opengw.net_udp_1194.ovpn","","0","2022-08-26 09:23:25",""),
("141","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn626294843.opengw.net","121.134.181.202","26 sessions","Total 205,302 users","79.13 Mbps","28 ms","1,001,514","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn626294843.opengw.net&port=1460&hid=18113701&/vpngate_vpn626294843.opengw.net_udp_1460.ovpn","","0","2022-08-26 09:23:25",""),
("142","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn650209664.opengw.net","131.129.242.226","19 sessions","Total 52,165 users","40.97 Mbps","10 ms","919,057","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn650209664.opengw.net&port=1642&hid=18488302&/vpngate_vpn650209664.opengw.net_udp_1642.ovpn","","0","2022-08-26 09:23:25",""),
("143","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn349715455.opengw.net","126.219.90.137","16 sessions","Total 34,952 users","244.87 Mbps","5 ms","862,138","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn349715455.opengw.net&port=1397&hid=18882418&/vpngate_vpn349715455.opengw.net_udp_1397.ovpn","","0","2022-08-26 09:23:25",""),
("144","Thailand","https://www.vpngate.net/images/flags/TH.png","","","vpn777958173.opengw.net","58.136.155.107","72 sessions","Total 387,030 users","255.50 Mbps","25 ms","734,786","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn777958173.opengw.net&port=1407&hid=17625617&/vpngate_vpn777958173.opengw.net_udp_1407.ovpn","","0","2022-08-26 09:23:25",""),
("145","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn865241782.opengw.net","58.232.43.112","15 sessions","Total 749 users","56.68 Mbps","33 ms","794,578","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn865241782.opengw.net&port=1303&hid=19178975&/vpngate_vpn865241782.opengw.net_udp_1303.ovpn","","0","2022-08-26 09:23:25",""),
("146","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn557604833.opengw.net","121.130.148.34","13 sessions","Total 29,353 users","457.79 Mbps","28 ms","741,944","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn557604833.opengw.net&port=1700&hid=18924266&/vpngate_vpn557604833.opengw.net_udp_1700.ovpn","","0","2022-08-26 09:23:25",""),
("147","Japan","https://www.vpngate.net/images/flags/JP.png","","","vpn662317581.opengw.net","133.218.20.37","8 sessions","Total 288,494 users","189.87 Mbps","33 ms","688,524","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn662317581.opengw.net&port=1756&hid=16271604&/vpngate_vpn662317581.opengw.net_udp_1756.ovpn","","0","2022-08-26 09:23:25",""),
("148","Canada","https://www.vpngate.net/images/flags/CA.png","","","vpn842358121.opengw.net","68.147.45.12","9 sessions","Total 24,897 users","14.02 Mbps","49 ms","642,765","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn842358121.opengw.net&port=1551&hid=10964252&/vpngate_vpn842358121.opengw.net_udp_1551.ovpn","","0","2022-08-26 09:23:25",""),
("149","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn633946009.opengw.net","59.8.32.44","6 sessions","Total 8,003 users","79.12 Mbps","40 ms","628,258","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn633946009.opengw.net&port=1388&hid=19092442&/vpngate_vpn633946009.opengw.net_udp_1388.ovpn","","0","2022-08-26 09:23:25",""),
("150","Korea Republic of","https://www.vpngate.net/images/flags/KR.png","","","vpn992160476.opengw.net","121.175.81.83","0 sessions","Total 72,477 users","436.76 Mbps","25 ms","612,751","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn992160476.opengw.net&port=1807&hid=12353773&/vpngate_vpn992160476.opengw.net_udp_1807.ovpn","","0","2022-08-26 09:23:25",""),
("151","Brazil","https://www.vpngate.net/images/flags/BR.png","","","vpn779756644.opengw.net","177.39.126.151","0 sessions","Total 2,796 users","37.58 Mbps","13 ms","606,021","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=vpn779756644.opengw.net&port=11158&hid=16963535&/vpngate_vpn779756644.opengw.net_udp_11158.ovpn","","0","2022-08-26 09:23:25",""),
("152","Russian Federation","https://www.vpngate.net/images/flags/RU.png","","","tlt.opengw.net","178.163.94.9","93 sessions","Total 489,065 users","12.26 Mbps","41 ms","532,106","https://www.vpngate.net/common/openvpn_download.aspx?sid=1661487059429&udp=1&host=tlt.opengw.net&port=1194&hid=11611482&/vpngate_tlt.opengw.net_udp_1194.ovpn","","0","2022-08-26 09:23:25","");

