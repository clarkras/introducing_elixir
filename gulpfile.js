var gulp  = require('gulp')
var shell = require('gulp-shell')

gulp.task('test', shell.task([
    'clear',
    'pwd',
    'mix test',
    ], {
        cwd: 'etudes',
        ignoreErrors: true,
    })
);

gulp.task('watch', function () {
    gulp.watch(['etudes/test/**/*.exs', 'etudes/lib/**/*.ex'], ['test']);
});

gulp.task('shell demo', function () {
  return gulp.src('etudes/lib/**/*.ex', {read: false})
    .pipe(shell([
      'echo <%= f(file.path) %>',
      'ls -l <%= file.path %>'
    ], {
      templateData: {
        f: function (s) {
          return s.replace(/$/, '.bak')
        }
      }
    }))
})

gulp.task('default', ['test', 'watch']);
