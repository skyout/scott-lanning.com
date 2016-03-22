gulp                    = require "gulp"
uglify                  = require "gulp-uglify"

# uglify javascript file
gulp.task 'uglify', ->
    return gulp.src 'public/js/bundle.js'
        .pipe uglify()
        .pipe gulp.dest 'public/js'
        .on 'error', (err) ->
            throw err