<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="Header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-danger">Checkout cancelled!</h1>

                    <p>Your checkout process is cancelled! You may continue to book movie ticket.</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/ViewAll" />" class="btn btn-default">Movies</a></p>
        </section>

