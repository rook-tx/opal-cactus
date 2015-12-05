var errorHandler, gulp, stylus, autoprefixer, sourcemaps, del;

gulp = require('gulp'),
stylus = require('gulp-stylus'),
autoprefixer = require('gulp-autoprefixer'),
sourcemaps = require('gulp-sourcemaps'),
del = require('del');

errorHandler = function(error) {
  return console.log('Task Error: ', error);
};

gulp.task('stylus', function () {
  return gulp.src('stylus/*.styl')
    .pipe(sourcemaps.init())
    .pipe(stylus({
      compress: true
    }))
    .pipe(autoprefixer('last 3 version'))
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest('css'));
});

gulp.task('watch', function() {
  gulp.watch('stylus/**/*.styl', ['stylus']).on('error', errorHandler);
});

gulp.task('clean', function(cb) {
    del(['css'], cb)
});

gulp.task('default', ['watch']);
