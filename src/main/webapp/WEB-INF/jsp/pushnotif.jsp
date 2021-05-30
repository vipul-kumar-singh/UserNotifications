<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Desktop Notifications</title>
</head>
<body>
    <script>
        window.onload = function (p) {
           var notify;
            p.preventDefault();

            if (Notification.permission == 'default'){
                Notification.requestPermission();
            } else {
                notify = new Notification('New Notification', {
                    body : 'User Created Successfully',
                    }
                );
                notify.onclick = function() {
                    window.location = '/success';
                }
            }
        };
    </script>
</body>
</html>
