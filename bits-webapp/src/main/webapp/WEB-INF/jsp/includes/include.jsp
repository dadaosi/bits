<%--
    Created by panzhuowen on 2015/2/8.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Global styles START -->
<link href="<c:url value="/assets/global/plugins/font-awesome/css/font-awesome.min.css"/> " rel="stylesheet">
<link href="<c:url value="/assets/global/plugins/bootstrap/css/bootstrap.css"/> " rel="stylesheet">
<!-- Global styles END -->

<!-- Page level plugin styles START -->
<link href="<c:url value="/assets/global/plugins/fancybox/source/jquery.fancybox.css"/> " rel="stylesheet">
<link href="<c:url value="/assets/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.css"/> " rel="stylesheet">
<link href="<c:url value="/assets/global/plugins/slider-revolution-slider/rs-plugin/css/settings.css"/> " rel="stylesheet">
<!-- Page level plugin styles END -->

<!-- Theme styles START -->
<link href="<c:url value="/assets/global/css/components.css"/> " rel="stylesheet">
<link href="<c:url value="/assets/frontend/layout/css/style.css"/> " rel="stylesheet">
<link href="<c:url value="/assets/frontend/pages/css/style-revolution-slider.css"/> " rel="stylesheet"><!-- metronic revo slider styles -->
<link href="<c:url value="/assets/frontend/layout/css/style-responsive.css"/> " rel="stylesheet">
<link href="<c:url value="/assets/frontend/layout/css/custom.css"/> " rel="stylesheet">


<!--[if lt IE 9]>
<script src="../../../assets/global/plugins/respond.min.js"></script>
<![endif]-->
<script src="<c:url value="/assets/global/plugins/jquery-1.11.0.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/jquery-migrate-1.2.1.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/bootstrap/js/bootstrap.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/frontend/layout/scripts/back-to-top.js"/> " type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="<c:url value="/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"/> " type="text/javascript"></script><!-- pop up -->
<script src="<c:url value="/assets/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.min.js"/> " type="text/javascript"></script><!-- slider for products -->

<!-- BEGIN RevolutionSlider -->
<script src="<c:url value="/assets/global/plugins/slider-revolution-slider/rs-plugin/js/jquery.themepunch.plugins.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/global/plugins/slider-revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="/assets/frontend/pages/scripts/revo-slider-init.js"/> " type="text/javascript"></script>
<!-- END RevolutionSlider -->

<script src="<c:url value="/assets/frontend/layout/scripts/layout.js"/> " type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        Layout.init();
        Layout.initOWL();
        RevosliderInit.initRevoSlider();
        Layout.initTwitter();
    });
</script>
<!-- END PAGE LEVEL JAVASCRIPTS -->