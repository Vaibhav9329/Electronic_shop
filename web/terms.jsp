<%-- 
    Document   : conditions
    Created on : 12 Mar, 2023, 12:04:24 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Tearms And Conditions</title>
        <link rel="stylesheet" href="bootstrap.min.css"></link>
        <style>
            .wrap {
                display: flex;
                justify-content: space-around;
                align-items: center;
                box-sizing: border-box;
                height: 100vh;
                padding: 2rem;
                background-color: #eee;
            }

            .container {
                display: flex;
                flex-direction: column;
                box-sizing: border-box;
                padding: 1rem;
                background-color: #fff;
                width: 768px;
                height: 100%;
                border-radius: 0.25rem;
                box-shadow: 0rem 1rem 2rem -0.25rem rgba(0, 0, 0, 0.25);
            }
            h2{
                font-size: 1.75rem;
                line-height: 1.75rem;
                margin: 0;
            }
            .container__content{
                flex-grow: 1;
                overflow-y: scroll;
            }
            .button{
                background-color: #444499;
                box-shadow: 0rem 0.5rem 1rem -0.125rem rgba(0, 0, 0, 0.25);
                padding: 0.8rem 2rem;
                border-radius: 0.5rem;
                color: #fff;
                text-decoration: none;
                font-size: 0.9rem;
                transition: transform 0.25s, box-shadow 0.25s;
            }
            .container__heading{
                padding: 1rem 0;
                border-bottom: 1px solid #ccc;
                text-align: center;
            }

            .small {
                color: #777;
                margin-right: 1rem;
            }
            .container__nav{
                border-top: 1px solid #ccc;
                text-align: right;
                padding: 2rem 0 1rem;
            }
        </style>
    </head>
    <body>
    <main class="wrap">
        <section class="container">
            <div class="container__heading">
                <h2>Terms & Conditions</h2>
            </div>
            <div class="container__content">
                <h4>1. Acceptance of Terms</h4>
                <p>By accessing or using the website, you agree to be bound by these terms and conditions of use. 
                    If you do not agree with any of these terms, you may not use or access the website.
                </p>
                <br>
                 <h4>2. User Conduct</h4>
                <p>You agree to use the website only for lawful purposes and in a way that does not infringe on the 
                    rights of others or restrict or inhibit others' use of the website. You also agree to not engage in any 
                    activity that could damage, disable, overburden, or impair the website's operation.
                </p>
                <br>
                 <h4>3. Intellectual Property</h4>
                <p>All content, trademarks, logos, and other intellectual property displayed on the 
                    website are owned by <b>Shri Siddhi Home Appliances.</b>
                    You are not authorized to use any of this intellectual property 
                    without our express written consent.
                </p>
                <br>
                 <h4>4.Product Information</h4>
                <p>
                    We make every effort to provide accurate information about the products available on our website. 
                    However, we cannot guarantee that all information is accurate, complete, or up-to-date. 
                    We reserve the right to correct any errors or omissions at any time without prior notice.
                </p>
                <br>
                 <h4>5. Payment and Shipping</h4>
                <p>We accept various forms of payment for orders and provide shipping to certain locations. 
                    By placing an order on our website, you agree to pay for the order and any applicable shipping costs.
                </p>
                <br>
                 <h4>6. Returns and Refunds</h4>
                <p>We accept returns and provide refunds for certain products according to our return policy. 
                    Please refer to our return policy for details on our returns and refunds process.
                </p>
                <br>
                 <h4>1.Limitation of Liability</h4>
                <p><b>Shri Siddhi Home Appliances </b> is not liable for any damages or losses resulting from the use of our website 
                    or the products purchased on our website.
                    We do not guarantee that the website will always be available, uninterrupted, or error-free.
                </p>
                <br>
                 <h4>7. Governing Law</h4>
                <p>These terms and conditions are governed by and construed in accordance with the laws of <b>india </b>, 
                    and any disputes arising from the use of our website or products purchased on our website shall be resolved 
                    in accordance with the laws of <b>india</b>.
                </p>
                <br>
                <p>Thank you for reading our terms and conditions. If you have any questions, please contact us.
                </p>
                <br>
            </div>
        </section>
    </main>
</body>
</html>
