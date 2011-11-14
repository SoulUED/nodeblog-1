/**
 * NodeBlog APP
 */

require('./public/js/date.format');

var connect = require('connect')
  , render = require('./lib/render')
  , blog = require('./controllers/blog')
  , user = require('./controllers/user')
  , post = require('./controllers/post')
  , comment = require('./controllers/comment')
  , config = require('./config')
  , utils = require('./lib/utils')
  , Store = require('./lib/session_store')
  , db = require('./db');

var app = connect(
    connect.static(__dirname + '/public')
  , connect.logger()
  , connect.cookieParser()
  , connect.bodyParser()
  , connect.session({ 
      secret: config.session_secret
    , cookie:{ path: '/', httpOnly: true, maxAge: 24 * 3600000 * 3650 } 
    , store: new Store(config.db_options)
  })
  , user.oauth_handle
  , render({
      root: __dirname + '/views/simple'
    , cache: false
    , helpers: {
        config: config
      , markdown: utils.markdown
    }
  })
);
app.use('/', connect.router(blog));
app.use('/user', connect.router(user));
app.use('/post', connect.router(post));
app.use('/comment', connect.router(comment));
app.listen(3000);