# Run a test in Chrome (default browser)
pytest my_first_test.py

# Run a test in Firefox
pytest test_swag_labs.py --browser=firefox

# Run a test in Demo Mode (highlight assertions)
pytest test_demo_site.py --demo

# Run a test in Headless Mode (invisible browser)
pytest test_demo_site.py --headless

# Run tests multi-threaded using [n] threads
pytest test_suite.py -n4

# Reuse the browser session for all tests ("--rs")
pytest test_suite.py --reuse-session

# Reuse the browser session, but erase cookies between tests
pytest test_suite.py --reuse-session --crumbs

# Create a real-time dashboard for test results
pytest test_suite.py --dashboard

# Create a pytest html report after tests are done
pytest test_suite.py --html=report.html

# Activate Debug Mode on failures ("c" to continue)
pytest test_fail.py --pdb -s

# Rerun failing tests more times
pytest test_suite.py --reruns=1

# Activate Debug Mode as the test begins ("n": next. "c": continue)
pytest test_null.py --trace -s

# Activate Recorder/Debug Mode as the test begins ("c" to continue)
pytest test_null.py --recorder --trace -s

# Pass extra data into tests (retrieve by calling self.data)
pytest my_first_test.py --data="ABC,DEF"

# Run tests on a local Selenium Grid
pytest test_suite.py --server="127.0.0.1"

# Run tests on a remote Selenium Grid
pytest test_suite.py --server=IP_ADDRESS --port=4444

# Run tests on a remote Selenium Grid with authentication
pytest test_suite.py --server=USERNAME:KEY@IP_ADDRESS --port=80

# Run tests through a proxy server
pytest proxy_test.py --proxy=IP_ADDRESS:PORT

# Run tests through a proxy server with authentication
pytest proxy_test.py --proxy=USERNAME:PASSWORD@IP_ADDRESS:PORT

# Run tests while setting the web browser's User Agent
pytest user_agent_test.py --agent="USER-AGENT-STRING"

# Run tests using Chrome's mobile device emulator (default settings)
pytest test_swag_labs.py --mobile

# Run mobile tests specifying CSS Width, CSS Height, and Pixel-Ratio
pytest test_swag_labs.py --mobile --metrics="360,640,2"

# Run tests while changing SeleniumBase default settings
pytest my_first_test.py --settings-file=custom_settings.py
