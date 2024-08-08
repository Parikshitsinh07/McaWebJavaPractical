<%-- 
    Document   : footer
    Created on : 27-Mar-2024, 10:11:08 pm
    Author     : Maulik Parmar
--%>

<style>
    .footer {
         background-color: #1976D2;
        color: #fff;
        text-align: center;
        font-size: 20px;
        padding: 5px 0;
        position: fixed;
        bottom: 0;
        width: 100%;
    }
</style>
<footer>
    <div class="footer">
        <c:if test="${not empty user.name}">
            <p>Thank you <c:out value="${user.name}" /> for visiting!</p>
        </c:if>
    </div>
</footer>
</body>
</html>

