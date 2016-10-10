# ----------
# Setup
# ----------

gulp            = require('gulp')
plugins         = require('gulp-load-plugins')()
autoprefixer    = require('gulp-autoprefixer')


# ----------
# Handlers
# ----------

errorHandler = (error) ->
  console.log('Task Error: ', error)


# ----------
# Paths
# ----------

paths           =

  proj : 'opal-cactus'
  src :
    styleLibs     : [
      './static/css/*.css'
    ]
    scriptLibs    : [
      './static/scripts/vendors/jquery-1.11.3.min.js'
    ]

runShellCommand = (command, options, cb)->
  spawn = require('child_process').spawn

  cmd = spawn command, options
  cmd.stdout.on 'data', (data)->
    process.stdout.write data.toString()

  cmd.stderr.on 'data', (data)->
    process.stdout.write 'ERROR :: ' + data.toString()

  cmd.on 'exit', (code)->
    if (code == 1)
      console.log 'Done!'
    else
      console.log 'Exited with error code ' + code


# ----------
# Default
# ----------

gulp.task('default', ['scripts', 'styles', 'scriptLibs'])


# ----------
# Styles
# ----------

gulp.task 'styles', () ->

  sources = [
    { src: './static/stylus/' + paths.proj + '.styl', file: paths.proj + '.css' }
  ]
  destination = './static/css/'

  for css in sources
    gulp.src(css.src)
      .pipe(plugins.stylus())
      .pipe(plugins.cleanCss())
      .pipe(autoprefixer('last 3 version'))
      .pipe(plugins.rename(css.file))
      .on('error', plugins.util.log)
      .pipe(gulp.dest(destination))


# ----------
# Style Libraries
# ----------

gulp.task 'styleLibs', () ->

  source = paths.src.styleLibs.concat([])

  destination = './static/css/'

  gulp.src(source)
    .pipe(plugins.concat('libs.min.css'))
    .pipe(plugins.cleanCss({keepBreaks:false}))
    .on('error', plugins.util.log)
    .pipe(gulp.dest(destination))


# ----------
# Scripts
# ----------

gulp.task 'scripts', () ->

  sources = [
    { src: './static/scripts/**/*.coffee', file: paths.proj + '.js' }
  ]

  destination = './static/js/'

  for js in sources
    gulp.src(js.src)
      .pipe(plugins.coffee( bare: true ))
      .on('error', plugins.util.log)
      .pipe(plugins.concat(js.file))
      .on('error', plugins.util.log)
      .pipe(plugins.uglify())
      .pipe(gulp.dest(destination))


# ----------
# Script Libraries
# ----------

gulp.task 'scriptLibs', () ->

  src = paths.src.scriptLibs.concat([])

  destination = './static/js/'

  gulp.src(src)
    .pipe(plugins.concat( paths.proj + 'Libs.js'))
    .on('error', plugins.util.log)
    .pipe(plugins.uglify())
    .on('error', plugins.util.log)
    .pipe(gulp.dest(destination))


# ----------
# Watch
# ----------

gulp.task 'watch', () ->

  gulp.watch('./static/**/*.styl', ['styles'])
    .on 'error', plugins.util.log

  gulp.watch('./static/**/*.coffee', ['scripts'])
    .on 'error', plugins.util.log
