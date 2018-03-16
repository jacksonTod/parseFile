<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta content="text/html;charset=UTF-8" http-equiv="Content-Type">
    <script type="text/javascript" src="/resource/jquery.min.js"></script>
    <script type="text/javascript" src="/resource/openOffice/flexpaper_flash.js"></script>
    <script type="text/javascript" src="/resource/openOffice/flexpaper_flash_debug.js"></script>
    <style type="text/css" media="screen">
        html, body {
            height: 100%;
        }

        body {
            margin: 0;
            padding: 0;
            overflow: auto;
        }

        #flashContent {
            display: none;
        }
    </style>
    <title>在线文档预览</title>
</head>
<body>
<div style="position: absolute; left:50px;top:10px;">
    <a id="viewerPlaceHolder" style="width: 820px;height: 650px;display: block;"></a>
    <script type="text/javascript">
        var swfFilePath = '${swfpath}';
        if(swfFilePath!=""&&swfFilePath!=null&&swfFilePath!=undefined){
            /*swfFilePath="/resource/openOffice"+swfFilePath;*/
            var fp = new FlexPaperViewer('FlexPaperViewer', 'viewerPlaceHolder', {
                config: {
                    SwfFile: escape(swfFilePath), Scale: 1.2,
                    ZoomTransition: 'easeOut',
                    ZoomTime: 0.5,
                    ZoomInterval: 0.2,
                    FitPageOnLoad: false,
                    FitWidthOnload: false,
                    FullScreenAsMaxWindow: false,
                    ProgressiveLoading: false,
                    MinZoomSize: 0.2,
                    MaxZoomSize: 5,
                    SearchMatchAll: false,
                    InitViewMode: 'SinglePage',
                    RenderingOrder: 'flash',
                    ViewModeToolsVisible: true,
                    ZoomToolsVisible: true,
                    NavToolsVisible: true,
                    CursorToolsVisible: true,
                    SearchToolsVisible: true,
                    localeChain: 'en_US'
                }
            });
        }

    </script>
</div>
</body>
</html>
