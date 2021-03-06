// config for blog settings

var path = require('path');

// for support vhost
//exports.subdomain = '*.nodeblogtest.org';

exports.DATA_DIR = path.join(__dirname, 'data');

exports.PORT = process.env.PORT || 3000;

exports.db_options = {
	host: 'localhost',
	port: 27017,
	user: 'nodeblog',
	password: '123456',
	database: 'nodeblog'
};

exports.session_secret = 'weorulx123dfwlfjlsjdfppqlasAWDOfjnjxjclvjlsdfjoasdufowefjljdf';
exports.weibo_appkeys = {
	tsina: ['808860407', 'ef895e3caba5dc4c1cb43ca33987e50d', '新浪微博']
  , tqq: ['b6d893a83bd54e598b5a7c359599190a', '34ad78be42426de26e5c4b445843bb78', '腾讯微博']
  , tsohu: ['geDQ7cFZ7iruNPHm3lZk', 'iQ%mtL!eh%xVl!SjQN^($Efdw41!#Ytt*r8SMtw8', '搜狐微博']
  //, twitter: ['i1aAkHo2GkZRWbUOQe8zA', 'MCskw4dW5dhWAYKGl3laRVTLzT8jTonOIOpmzEY', 'Twitter']
};

exports.admins = ['tsina:1640328892'];

exports.view_theme = 'simple';
exports.view_cache = false;
exports.site_name = 'Node Blog Engine';
exports.site_url = 'http://nodeblog.org';
exports.site_description = '<a target="_blank" href="https://github.com/fengmk2/nodeblog/">Nodeblog</a> is a simple blog system base on <a href="http://nodejs.org" target="_blank">Nodejs</a>.';

