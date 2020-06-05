# Financial Theme v2
New features:
* Reduced the number of files used for develop the theme
* Compatibility with Liferay DXP 7.2 FP5 / SP2
* Added age check window and stores selection in a cookie
* Set main colors as variables
* Set loader and gotop button as configurables
* Fixed some bugs

## Configuration
| Property | Type | Default | Description |
| ------------- | ------------- | ------------- | ------------- |
| show-age-modal | checkbox | false | Shows/hides age check window |
| show-header | checkbox | true | Shows/hides the complete header (menu, search bar, logo) |
| show-sticky-header | checkbox | false | Enables/Disables the sticky header |
| fix-menu-login-status | checkbox | true | Disables sticky menu in login and status (errors) pages. Only active with sticky menu. |
| sticky-logo | text |  | Path to logo in sticky bar, if sticky bar is disabled, it doesn't have effect. If empty it uses the main logo |
| show-header-search | checkbox | true | Shows/hides search bar in header |
| show-language-selector | checkbox | true | Shows/hides the language selector (not implemented yet in this version) |
| show-footer | checkbox | true | Shows/hides the complete footer |
| show-footer-company-navigation | checkbox | true | Shows/hides Company Menu in the footer (the first one) |
| show-footer-support-navigation | checkbox | true | Shows/hides Support Menu in the footer (the second one) |
| show-social-icons | checkbox | true | Shows/hides social icons bar in the footer |
| twitter-url | text | | If it is filled, shows Twitter logo refering this URL. Use complete URL format http(s)://www.example.com |
| facebook-url | text | | If it is filled, shows Facebook logo refering this URL. Use complete URL format http(s)://www.example.com |
| instagram-url | text | | If it is filled, shows Instagram logo refering this URL. Use complete URL format http(s)://www.example.com |
| linkedin-url | text | | If it is filled, shows LinkedIn logo refering this URL. Use complete URL format http(s)://www.example.com | 
| wrap-widget-page-content | checkbox | true | Wraps widget page content |
| location | text | | Fills location info in the footer |
| email | text | | Fills the email info in the footer |
| phone | text | | Fills the phone info in the footer |
| company-description | text | Quis ipsum suspendisse ultrices gravida commodo. Risus commodo vel | Fills Company description in the footer |
| show-loader | checkbox | true | Shows/hides the page loader |
| show-gotop-button | checkbox | true | Shows/hides the GoTop button |

## Color Setting
Theme colors are defined in **src/css/partials/variables/_colors.css**
These are the default colors:
* $f-primary: #005611;
* $f-info: #7BC6DC;
* $f-secondary: #7ab800;
* $f-success: #57D192;
* $f-background: #ffffff;
* $f-text: #212529;