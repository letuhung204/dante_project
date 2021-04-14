<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home | Dante NYC</title>
    <meta name="Revisit-After" content="5 Days">
    <meta name="Distribution" content="Global">
    <link rel="stylesheet" href="${contextPath}/resources/css/magnific-popup.css" />
    <link rel="stylesheet" href="${contextPath}/resources/css/styles.css">
    <script src="${contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/resources/js/lazyload.min.js"></script>
    <script src="${contextPath}/resources/js/jquery.magnific-popup.js"></script>
    <script src="${contextPath}/resources/js/script.js"></script>
    <style>
        @font-face {
            font-family: "Resamitz";
            src: url("${contextPath}/resources/fonts/Resamitz.otf") format("opentype");
        }
        @font-face {
            font-family: "Catorze 27 Medium";
            src: url("${contextPath}/resources/fonts/Catorze27Medium.otf") format("opentype");
        }
        @font-face {
            font-family: "Catorze 27 Black";
            src: url("${contextPath}/resources/fonts/Catorze27Style1-Black.otf") format("opentype");
        }
    </style>
</head>
<body class="has-hero-intent index-template">
<header class="site-header">
    <a href="#main-content" class="skip">Skip to main content</a>
    <div class="site-header-desktop">
        <div class="site-header-desktop-primary site-header-desktop-primary--floatable" data-header-sticky>
            <div class="container">
                <div class="site-logo">
                    <a class="site-logo__btn" href="/">
                        <img class="site-logo__expanded"
                             src="https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/18365dante-cream.png"
                             alt="Caffe Dante Home" />
                        <img class="site-logo__collapsed"
                             src="https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/31247Dante_-sticky.png"
                             alt="dante sticky logo" />
                    </a>
                </div>
                <nav class="site-nav">
                    <ul class="site-nav-menu" data-menu-type="desktop">
                        <li>
                            <a class="site-nav-link " href="#">Welcome</a>
                        </li>
                        <li>
                            <a class="site-nav-link   " href="#">TO-GO · CAFFE DANTE</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<div class="site-content">
    <main class="site-content__main">
        <h1 class="sr-only">Home</h1>
        <span id="main-content" class="sr-only">Main content starts here, tab to start navigating</span>
        <section id="hero" class="hero hero--gallery hero--fullheight revealable">
            <div class="hero__content container">
                <p><br></p>
                <p><img src="https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/18365dante-cream.png?w=1000&fit=max&auto=compress,format&h=1000"
                        data-alt_text="a close up of a sign" class="fr-fic fr-dib hero-logo"
                        alt="a close up of a sign" style="width: 195px;"></p>
                <p><br></p>
                <p><br></p>
                <p><br></p>
                <p><br></p>
                <p><br></p>
                <p><br></p>
                <p><br></p>
                <p><br></p>
                <p><br></p>
                <p><br></p>
                <p><br></p>
                <p><br></p>
                <p style="text-align: center;"><a href="https://dante-101040.square.site/" rel="noopener noreferrer"
                                                  target="_blank"></a></p>
            </div>
            <div class="gallery gallery--fit gallery--dimmed">
                <div>
                    <div class="gallery__item gallery__item-enhancement">
                        <picture>
                            <source media="(max-width: 559px)" sizes="100vw"
                                    srcset="https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/37253OLD_FASHIONED_WHISKEY_COCKTAIL.jpg?w=1000&fit=max&auto=compress,format 1000w">
                            <source media="(min-width: 560px) and (max-width: 767px)" sizes="100vw"
                                    srcset="https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/37253OLD_FASHIONED_WHISKEY_COCKTAIL.jpg?w=1200&fit=max&auto=compress,format 1200w">
                            <source media="(min-width: 767px) and (max-width: 1024px)" sizes="100vw"
                                    srcset="https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/37253OLD_FASHIONED_WHISKEY_COCKTAIL.jpg?w=1400&fit=max&auto=compress,format 1400w">
                            <source media="(min-width: 1024px)" sizes="100vw"
                                    srcset="https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/37253OLD_FASHIONED_WHISKEY_COCKTAIL.jpg?w=1800&fit=max&auto=compress,format 1800w">
                            <img src="https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/37253OLD_FASHIONED_WHISKEY_COCKTAIL.jpg?fit=max&w=1800&auto=format,compress"
                                 alt="Dante's Old Fashioned over the menu">
                        </picture>
                    </div>
                    <div class="gallery__item gallery__item-fallback"
                         data-src="https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/37253OLD_FASHIONED_WHISKEY_COCKTAIL.jpg?fit=max&w=1800&auto=format,compress">
                        <img class="sr-only" alt="Dante's Old Fashioned over the menu">
                    </div>
                </div>
            </div>
        </section>
        <section class="c-two-col--text content container revealable catalogue">
            <div class="row">
                <div class="col-md-12">
                    <h2>Catalogue</h2>
                    <div class="catalogue-menu">
                        <a href="#bookmenu" class="scroll_to">Book a menu</a>
                        <a href="#celebrate" class="scroll_to">Celebrate</a>
                        <a href="#target-element" class="scroll_to">Scroll to Target Element</a>
                    </div>
                </div>
            </div>
        </section>
        <c:forEach items="${listmenu}" var="menu" varStatus="s">
        <section class="c-split c-split--vcenter revealable">
            <div class="c-split__col c-split__col--empty">
                <div class="c-split__col-inner">
                    <div class="c-split__image" role="img" aria-label="Dante Negroni over Menu"
                         style="background-image: url('/user-photos/${menu.photos}');">
                    </div>
                </div>
            </div>
            <div class="c-split__col ">
                <div class="c-split__col-inner">
                    <div class="c-split__content content">
                        <h2 id="bookmenu" class="h2 c-split__heading"><c:out value="${menu.title}" /></h2>
                        <p><c:out value="${menu.description}" /></p>

                        <button type="button" class="btn btn-brand popup-with-zoom-anim" data-popup="inline"
                                href="#popup-reservations-form" data-bb-track="button"
                                data-bb-track-on="click" data-bb-track-category="Reservations Trigger Button"
                                data-bb-track-action="Click" data-bb-track-label="Multi Button">Reservations</button>
                    </div>
                </div>
            </div>
        </section>
        </c:forEach>
        <section class="c-split c-split--vcenter revealable">
            <div class="c-split__col c-split__col--empty">
                <div class="c-split__col-inner">
                    <div class="c-split__image" role="img" aria-label="Dante Negroni over Menu"
                         style="background-image: url('https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/20100NEGRONI_SESSIONS.jpg?fit=max&w=1800&auto=format,compress');">
                    </div>
                </div>
            </div>
            <div class="c-split__col ">
                <div class="c-split__col-inner">
                    <div class="c-split__content content">
                        <h2 id="bookmenu" class="h2 c-split__heading">Book a table</h2>
                        <p>Nguyên liệu</p>
                        <p>Trứng gà 6 quả
                            (trứng gà công nghiệp với trọng lượng 1 quả từ 57 - 62gr cả vỏ)</p>
                        <p>Bột mì đa dụng 100 gr</p>
                        <p>Tinh bột bắp 20 gr
                            (corn starch)</p>
                        <p>TĐường 100 gr</p>
                        <p>TMuối 2 gr</p>
                        <p>TSữa tươi không đường 60 ml</p>
                        <p>TDầu ăn 60 ml</p>
                        <p>TTinh chất vani 1/2 thìa cà phê
                            (3ml)</p>
                        <p>TNước cốt canh 2 ml
                            (khoảng 5 - 6 giọt)</p>

                        <button type="button" class="btn btn-brand popup-with-zoom-anim" data-popup="inline"
                                href="#popup-reservations-form" data-bb-track="button"
                                data-bb-track-on="click" data-bb-track-category="Reservations Trigger Button"
                                data-bb-track-action="Click" data-bb-track-label="Multi Button">Reservations</button>
                    </div>
                </div>
            </div>
        </section>
        <section class="c-split c-split--vcenter revealable">
            <div class="c-split__col c-split__col--empty">
                <div class="c-split__col-inner">
                    <div class="c-split__image" role="img" aria-label="a cake sitting on top of a table"
                         style="background-image: url('https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/94459ROSE_PETAL.jpg?fit=max&w=1800&auto=format,compress');">
                    </div>
                </div>
            </div>
            <div class="c-split__col ">
                <div class="c-split__col-inner">
                    <div class="c-split__content content">
                        <h2 id="celebrate" class="h2 c-split__heading">Celebrate</h2>
                        <p>Schedule your next event at Caffe Dante.</p>
                        <a href="#" class="btn btn-brand">Inquire Within</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="c-split c-split--vcenter revealable">
            <div class="c-split__col c-split__col--empty">
                <div class="c-split__col-inner">
                    <div class="c-split__image" alt=""
                         style="background-image: url('https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/98217NEGRONI_BIANCO.jpg?fit=max&w=1800&auto=format,compress');">
                    </div>
                </div>
            </div>
            <div class="c-split__col ">
                <div class="c-split__col-inner">
                    <div class="c-split__content content">
                        <h2 class="h2 c-split__heading">Shop</h2>
                        <section id=”target-element”>Target Element Content</section>
                        <p>Purchase our merchandise online. </p>
                        <a href="#" class="btn btn-brand">View Products</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="c-tout-overlay c-tout-overlay--dimmed revealable"
                 style="background-image: url('https://images.getbento.com/accounts/e8eee6aef7c2e8242e267a82a199ac35/media/images/57814S_Freihon_190703_0114_A.jpg?fit=max&w=1800&auto=format,compress');">
            <div class="container">
                <h2 class="h1">Food & Drink</h2>
                <p>Click below to see what we&#39;re serving. </p>
                <a href="#" class="btn btn-brand">View Menus</a>
            </div>
        </section>
    </main>
</div>
<footer>
    <div class="site-footer-desktop">
        <div class="site-footer-desktop-primary" data-footer-sticky>
            <div class="site-footer-desktop-primary__container container">
                <ul class="social-accounts">
                    <li><a href="https://www.facebook.com/dantenewyorkcity" target="_blank" rel="noopener"
                           data-bb-track="button" data-bb-track-on="click" data-bb-track-category="Social Icons"
                           data-bb-track-action="Click" data-bb-track-label="Facebook, Footer"><span
                            class="fa fa-facebook" aria-hidden="true"></span><span
                            class="sr-only">Facebook</span></a></li>
                    <li><a href="https://www.instagram.com/dantenewyorkcity/" target="_blank" rel="noopener"
                           data-bb-track="button" data-bb-track-on="click" data-bb-track-category="Social Icons"
                           data-bb-track-action="Click" data-bb-track-label="Instagram, Footer"><span
                            class="fa fa-instagram" aria-hidden="true"></span><span
                            class="sr-only">Instagram</span></a></li>
                    <li><a href="https://open.spotify.com/playlist/04PcJHvCBlIiwOlzex4Dxw" target="_blank"
                           rel="noopener" data-bb-track="button" data-bb-track-on="click"
                           data-bb-track-category="Social Icons" data-bb-track-action="Click"
                           data-bb-track-label="spotify, Footer"><span class="fa fa-spotify"
                                                                       aria-hidden="true"></span><span class="sr-only">spotify</span></a></li>
                </ul>
                <nav class="site-nav">
                    <ul class="site-nav-menu">
                        <li>
                            <a class="site-nav-link" href="https://goo.gl/maps/jC281D5SdiYbPv3u8" target="_blank"
                               rel="noopener">79-81 Macdougal St, New York</a>
                        </li>
                        <li>
                            <a class="site-nav-link" href="tel:212-982-5275">(212) 982-5275</a>
                        </li>
                        <li>
                            <a class="site-nav-link" href="/our-story/">Our Story</a>
                        </li>
                        <li>
                            <a class="site-nav-link" href="/work-with-us/">Work With Us</a>
                        </li>
                        <li>
                            <a class="site-nav-link" href="/contact/">Contact</a>
                        </li>
                        <li>
                            <a class="site-nav-link" href="/location/dante-nyc/">Hours & Locations</a>
                        </li>
                        <li>
                            <a class="site-nav-link" href="/reservations/">Reservations</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="site-footer-desktop-secondary">
            <div class="site-powered-by">
                <a href="https://getbento.com/?utm_source=footer&amp;utm_campaign=dante-nyc.com" target="_blank"
                   rel="noopener">powered by BentoBox</a>
            </div>
        </div>
    </div>
</footer>
<div id="popup-reservations-form" class="popup popup--form mfp-hide">
    <form class="reservations-form form-alt container-sm">
        <div data-bb-track="form" data-bb-track-on="submit" data-bb-track-category="Forms"
             data-bb-track-action="Submit" data-bb-track-label="Reservations" aria-hidden="true"></div>
        <div class="form-header">
            <h2 class="h1 form-heading">Reservations</h2>
        </div>
        <div class="form-ui">
            <label for="location" class="input--hidden">
                <i class="error-label"></i>
                <span class="input-label">Location</span>
                <div class="form-control-group has-icon-right">
                    <select id="location" class="form-control unselected" name="location" required
                            aria-describedby="location-error">
                        <option value="" disabled>Location</option>
                        <option value="site" selected data-reservation-service="resy" data-reservation-id="1290"
                                data-reservation-api-key>Dante NYC | Italian Small Plates & Cocktails in New York City
                        </option>
                    </select>
                    <span class="form-control-group--icon is-positioned-right" aria-hidden="true">
                            <i class="fa fa-chevron-down"></i>
                        </span>
                </div>
            </label>
            <label for="seats">
                    <span class="input-label">Number of People <span class="input-label-optional">-
                            Optional</span></span>
                <div class="form-control-group has-icon-right">
                    <select id="seats" class="form-control unselected" name="seats">
                        <option value="" selected disabled>Number of People</option>
                        <option value="1">1 Person</option>
                        <option value="2">2 People</option>
                        <option value="3">3 People</option>
                        <option value="4">4 People</option>
                        <option value="5">5 People</option>
                        <option value="6">6 People</option>
                        <option value="7">7 People</option>
                        <option value="8">8+ People</option>
                    </select>
                    <span class="form-control-group--icon is-positioned-right" aria-hidden="true">
                            <i class="fa fa-chevron-down"></i>
                        </span>
                </div>
            </label>
            <label for="date">
                <i class="error-label"></i>
                <span class="input-label">Date</span>
                <div data-react-component="accessible-date-picker"></div>
            </label>
            <label for="time">
                <span class="input-label">Time <span class="input-label-optional">- Optional</span></span>
                <div class="form-control-group has-icon-left has-icon-right">
                        <span class="form-control-group--icon is-positioned-left" aria-hidden="true">
                            <i class="fa fa-clock-o"></i>
                        </span>
                    <select id="time" class="form-control unselected" name="time">
                        <option value="" selected disabled>Time</option>
                        <option value="2300">11:00 PM</option>
                        <option value="2230">10:30 PM</option>
                        <option value="2200">10:00 PM</option>
                        <option value="2130">9:30 PM</option>
                        <option value="2100">9:00 PM</option>
                        <option value="2030">8:30 PM</option>
                        <option value="2000">8:00 PM</option>
                        <option value="1930">7:30 PM</option>
                        <option value="1900">7:00 PM</option>
                        <option value="1830">6:30 PM</option>
                        <option value="1800">6:00 PM</option>
                        <option value="1730">5:30 PM</option>
                        <option value="1700">5:00 PM</option>
                        <option value="1630">4:30 PM</option>
                        <option value="1600">4:00 PM</option>
                        <option value="1530">3:30 PM</option>
                        <option value="1500">3:00 PM</option>
                        <option value="1430">2:30 PM</option>
                        <option value="1400">2:00 PM</option>
                        <option value="1330">1:30 PM</option>
                        <option value="1300">1:00 PM</option>
                        <option value="1230">12:30 PM</option>
                        <option value="1200">12:00 PM</option>
                        <option value="1130">11:30 AM</option>
                        <option value="1100">11:00 AM</option>
                        <option value="1030">10:30 AM</option>
                        <option value="1000">10:00 AM</option>
                        <option value="0930">9:30 AM</option>
                        <option value="0900">9:00 AM</option>
                        <option value="0830">8:30 AM</option>
                        <option value="0800">8:00 AM</option>
                        <option value="0730">7:30 AM</option>
                        <option value="0700">7:00 AM</option>
                    </select>
                    <span class="form-control-group--icon is-positioned-right" aria-hidden="true">
                            <i class="fa fa-chevron-down"></i>
                        </span>
                </div>
            </label>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-brand-alt">Find A Table</button>
            <span class="form-error-msg">Please check errors in the form above</span>
        </div>
        <div class="form-success-msg">
            <span>Thanks!</span>
        </div>
    </form>
</div>
</body>
</html>