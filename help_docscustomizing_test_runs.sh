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




-v  # Verbose mode. Prints the full name of each test and shows more details.
-q  # Quiet mode. Print fewer details in the console output when running tests.
-x  # Stop running the tests after the first failure is reached.
--html=report.html  # Creates a detailed pytest-html report after tests finish.
--collect-only | --co  # Show what tests would get run. (Without running them)
-n=NUM  # Multithread the tests using that many threads. (Speed up test runs!)
-s  # See print statements. (Should be on by default with pytest.ini present.)
--junit-xml=report.xml  # Creates a junit-xml report after tests finish.
--pdb  # If a test fails, enter Post Mortem Debug Mode. (Don't use with CI!)
--trace  # Enter Debug Mode at the beginning of each test. (Don't use with CI!)
-m=MARKER  # Run tests with the specified pytest marker.


--browser=BROWSER  # (The web browser to use. Default: "chrome".)
--chrome  # (Shortcut for "--browser=chrome". On by default.)
--edge  # (Shortcut for "--browser=edge".)
--firefox  # (Shortcut for "--browser=firefox".)
--safari  # (Shortcut for "--browser=safari".)
--settings-file=FILE  # (Override default SeleniumBase settings.)
--env=ENV  # (Set the test env. Access with "self.env" in tests.)
--account=STR  # (Set account. Access with "self.account" in tests.)
--data=STRING  # (Extra test data. Access with "self.data" in tests.)
--var1=STRING  # (Extra test data. Access with "self.var1" in tests.)
--var2=STRING  # (Extra test data. Access with "self.var2" in tests.)
--var3=STRING  # (Extra test data. Access with "self.var3" in tests.)
--variables=DICT  # (Extra test data. Access with "self.variables".)
--user-data-dir=DIR  # (Set the Chrome user data directory to use.)
--protocol=PROTOCOL  # (The Selenium Grid protocol: http|https.)
--server=SERVER  # (The Selenium Grid server/IP used for tests.)
--port=PORT  # (The Selenium Grid port used by the test server.)
--cap-file=FILE  # (The web browser's desired capabilities to use.)
--cap-string=STRING  # (The web browser's desired capabilities to use.)
--proxy=SERVER:PORT  # (Connect to a proxy server:port as tests are running)
--proxy=USERNAME:PASSWORD@SERVER:PORT  # (Use an authenticated proxy server)
--proxy-bypass-list=STRING # (";"-separated hosts to bypass, Eg "*.foo.com")
--proxy-pac-url=URL  # (Connect to a proxy server using a PAC_URL.pac file.)
--proxy-pac-url=USERNAME:PASSWORD@URL  # (Authenticated proxy with PAC URL.)
--proxy-driver  # (If a driver download is needed, will use: --proxy=PROXY.)
--multi-proxy  # (Allow multiple authenticated proxies when multi-threaded.)
--agent=STRING  # (Modify the web browser's User-Agent string.)
--mobile  # (Use the mobile device emulator while running tests.)
--metrics=STRING  # (Set mobile metrics: "CSSWidth,CSSHeight,PixelRatio".)
--chromium-arg="ARG=N,ARG2"  # (Set Chromium args, ","-separated, no spaces.)
--firefox-arg="ARG=N,ARG2"  # (Set Firefox args, comma-separated, no spaces.)
--firefox-pref=SET  # (Set a Firefox preference:value set, comma-separated.)
--extension-zip=ZIP  # (Load a Chrome Extension .zip|.crx, comma-separated.)
--extension-dir=DIR  # (Load a Chrome Extension directory, comma-separated.)
--binary-location=PATH  # (Set path of the Chromium browser binary to use.)
--sjw  # (Skip JS Waits for readyState to be "complete" or Angular to load.)
--pls=PLS  # (Set pageLoadStrategy on Chrome: "normal", "eager", or "none".)
--headless  # (Run tests in headless mode. The default arg on Linux OS.)
--headless2  # (Use the new headless mode, which supports extensions.)
--headed  # (Run tests in headed/GUI mode on Linux OS, where not default.)
--xvfb  # (Run tests using the Xvfb virtual display server on Linux OS.)
--locale=LOCALE_CODE  # (Set the Language Locale Code for the web browser.)
--interval=SECONDS  # (The autoplay interval for presentations & tour steps)
--start-page=URL  # (The starting URL for the web browser when tests begin.)
--archive-logs  # (Archive existing log files instead of deleting them.)
--archive-downloads  # (Archive old downloads instead of deleting them.)
--time-limit=SECONDS  # (Safely fail any test that exceeds the time limit.)
--slow  # (Slow down the automation. Faster than using Demo Mode.)
--demo  # (Slow down and visually see test actions as they occur.)
--demo-sleep=SECONDS  # (Set the wait time after Slow & Demo Mode actions.)
--highlights=NUM  # (Number of highlight animations for Demo Mode actions.)
--message-duration=SECONDS  # (The time length for Messenger alerts.)
--check-js  # (Check for JavaScript errors after page loads.)
--ad-block  # (Block some types of display ads from loading.)
--block-images  # (Block images from loading during tests.)
--do-not-track  # (Indicate to websites that you don't want to be tracked.)
--verify-delay=SECONDS  # (The delay before MasterQA verification checks.)
--recorder  # (Enables the Recorder for turning browser actions into code.)
--rec-behave  # (Same as Recorder Mode, but also generates behave-gherkin.)
--rec-sleep  # (If the Recorder is enabled, also records self.sleep calls.)
--rec-print  # (If the Recorder is enabled, prints output after tests end.)
--disable-js  # (Disable JavaScript on websites. Pages might break!)
--disable-csp  # (Disable the Content Security Policy of websites.)
--disable-ws  # (Disable Web Security on Chromium-based browsers.)
--enable-ws  # (Enable Web Security on Chromium-based browsers.)
--enable-sync  # (Enable "Chrome Sync" on websites.)
--uc | --undetected  # (Use undetected-chromedriver to evade bot-detection.)
--uc-cdp-events  # (Capture CDP events when running in "--undetected" mode.)
--remote-debug  # (Sync to Chrome Remote Debugger chrome://inspect/#devices)
--final-debug  # (Enter Debug Mode after each test ends. Don't use with CI!)
--dashboard  # (Enable the SeleniumBase Dashboard. Saved at: dashboard.html)
--dash-title=STRING  # (Set the title shown for the generated dashboard.)
--enable-3d-apis  # (Enables WebGL and 3D APIs.)
--swiftshader  # (Use Chrome's "--use-gl=swiftshader" feature.)
--incognito  # (Enable Chrome's Incognito mode.)
--guest  # (Enable Chrome's Guest mode.)
--devtools  # (Open Chrome's DevTools when the browser opens.)
--reuse-session | --rs  # (Reuse browser session for all tests.)
--reuse-class-session | --rcs  # (Reuse session for tests in class.)
--crumbs  # (Delete all cookies between tests reusing a session.)
--disable-beforeunload  # (Disable the "beforeunload" event on Chrome.)
--window-size=WIDTH,HEIGHT  # (Set the browser's starting window size.)
--maximize  # (Start tests with the browser window maximized.)
--screenshot  # (Save a screenshot at the end of each test.)
--no-screenshot  # (No screenshots saved unless tests directly ask it.)
--visual-baseline  # (Set the visual baseline for Visual/Layout tests.)
--wire  # (Use selenium-wire's webdriver for replacing selenium webdriver.)
--external-pdf  # (Set Chromium "plugins.always_open_pdf_externally":True.)
--timeout-multiplier=MULTIPLIER  # (Multiplies the default timeout values.)
--list-fail-page  # (After each failing test, list the URL of the failure.)
