# taskrunner to simplify the running and reporting of tests

task :run_tests do
    system 'cucumber -f pretty'
end

task :run_tests_with_report do
    system 'cucumber -f pretty -c -f html -o reports/report.html'
end