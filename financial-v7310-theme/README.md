# Financial Theme `Liferay 7.3`

A simple Liferay theme that allows for easy customization of the color scheme using Style Books.

## Set Up

1. `npm install`
2. `npm run init` (Configure your Liferay Server)
3. `npm run deploy`

![thumbnail](src/images/thumbnail.png)

## Features

* Sticky Header
* Hidden Search Bar
* Social Links
* Footer Menus
* Footer Company Info
* Preloader
* Go Top Button
* Age Modale (Only for sites which need age validation)
* Style Books aware

## Configuration
| Property | Type | Default | Description |
| ------------- | ------------- | ------------- | ------------- |
| show-header | checkbox | true | Shows/hides the complete header (menu, search bar, logo) |
| show-sticky-header | checkbox | false | Enables/Disables the sticky header |
| fix-menu-login-status | checkbox | true | Disables sticky menu in login and status (errors) pages. Only active with sticky menu. |
| sticky-logo | text |  | Path to logo in sticky bar, if sticky bar is disabled, it doesn't have effect |
| show-header-search | checkbox | true | Shows/hides search bar in header |
| show-language-selector | checkbox | true | Shows/hides the language selector |
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

## Issues & Questions Welcome