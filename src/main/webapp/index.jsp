<%@page import="java.util.List"%>
<%@page import="yzu.imsofa.network.evereat.FoodItem"%>
<%@page pageEncoding="utf-8" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.104.2">
        <title>Pricing example · Bootstrap v5.2</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/pricing/">





        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <!-- Favicons -->
        <link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
        <link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
        <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
        <meta name="theme-color" content="#712cf9">


        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }

            .b-example-divider {
                height: 3rem;
                background-color: rgba(0, 0, 0, .1);
                border: solid rgba(0, 0, 0, .15);
                border-width: 1px 0;
                box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
            }

            .b-example-vr {
                flex-shrink: 0;
                width: 1.5rem;
                height: 100vh;
            }

            .bi {
                vertical-align: -.125em;
                fill: currentColor;
            }

            .nav-scroller {
                position: relative;
                z-index: 2;
                height: 2.75rem;
                overflow-y: hidden;
            }

            .nav-scroller .nav {
                display: flex;
                flex-wrap: nowrap;
                padding-bottom: 1rem;
                margin-top: -1px;
                overflow-x: auto;
                text-align: center;
                white-space: nowrap;
                -webkit-overflow-scrolling: touch;
            }
        </style>

        <link href="pricing.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>
        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="check" viewBox="0 0 16 16">
        <title>Check</title>
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
    </symbol>
    </svg>

    <div class="container py-3">

        <header>
            <div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
                <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" class="me-2" viewBox="0 0 118 94" role="img"><title>Bootstrap</title><path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z" fill="currentColor"></path></svg>
                    <span class="fs-4">Evert Eat</span>
                </a>

                <nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
                </nav>
            </div>

            <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
                <h1 class="display-4 fw-normal">Let's Bite!</h1>
                <p class="fs-5 text-muted">
                <div class="mb-3 row">
                    <label for="name" class="col-sm-2 col-form-label">Your Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="name"/>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="email" class="col-sm-2 col-form-label">Email:</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="email" oninput="this.reportValidity();"/>
                    </div>
                </div>
                </p>
            </div>
        </header>

        <main>
            <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
                <div class="col">
                    <div class="card mb-4 rounded-3 shadow-sm">
                        <div class="card-header py-3">
                            <h4 class="my-0 fw-normal">Beef Noodles</h4>
                        </div>
                        <img src="data:image/jpeg;base64,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" class="card-img-top">
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">$0<small class="text-muted fw-light">/mo</small></h1>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>牛肉麵泛指各種以燉煮過的牛肉為主要配料之湯麵食</li>
                                <li>紅燒風味牛肉麵起源於台灣高雄市岡山區空軍眷村</li>
                                <li>清燉類的牛肉麵部分認為起源於蘭州牛肉麵</li>
                            </ul>
                            <form method="post" action="addToCart">
                                <input type="hidden" name="foodName" value="牛肉麪"/>
                                <input type="hidden" name="unitPrice" value="100"/>
                                <input type="hidden" name="amount" value="1"/>
                                <input type="submit" class="w-100 btn btn-lg btn-outline-primary" value="ADD"/>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-4 rounded-3 shadow-sm">
                        <div class="card-header py-3">
                            <h4 class="my-0 fw-normal">Fried chicken</h4>
                        </div>
                        <img src="https://images.chinatimes.com/newsphoto/2020-07-08/656/20200708001669.jpg" class="card-img-top">
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">$15<small class="text-muted fw-light">/mo</small></h1>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>炸雞是以油炸方式烹調的雞肉</li>
                                <li>連皮連骨的雞件，或者已去皮去骨的雞肉塊</li>
                                <li>異國風味洋蔥奶油炸雞</li>
                            </ul>
                            <form method="post" action="addToCart">
                                <input type="hidden" name="foodName" value="炸雞"/>
                                <input type="hidden" name="unitPrice" value="300"/>
                                <input type="hidden" name="amount" value="1"/>
                                <input type="submit" class="w-100 btn btn-lg btn-outline-primary" value="ADD"/>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-4 rounded-3 shadow-sm ">
                        <div class="card-header py-3 ">
                            <h4 class="my-0 fw-normal">Ramen</h4>
                        </div>
                        <img src="https://storage.googleapis.com/www-cw-com-tw/article/202101/article-5ff76e12dff12.jpg" class="card-img-top">
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">$29<small class="text-muted fw-light">/mo</small></h1>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>主打“天然豚骨湯”拉麵，從口味濃淡、油濃郁度</li>
                                <li>濃郁而無腥味的豚骨湯頭是能讓人喝光光的程度</li>
                                <li>搭配偏硬的麵條，每一口都是精華。</li>
                            </ul>
                            <form method="post" action="addToCart">
                                <input type="hidden" name="foodName" value="拉麪"/>
                                <input type="hidden" name="unitPrice" value="89"/>
                                <input type="hidden" name="amount" value="1"/>
                                <input type="submit" class="w-100 btn btn-lg btn-outline-primary" value="ADD"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <h2 class="display-6 text-center mb-4"></h2>

            <div class="table-responsive">
                <table class="table text-center">
                    <thead>
                        <tr>
                            <th>Item Name</th>
                            <th style="width: 22%;">Unit Price</th>
                            <th style="width: 22%;">Amount</th>
                        </tr>
                    </thead>
                    <tbody id="list">
                            <% List<FoodItem> cart = (List<FoodItem>) session.getAttribute("foodItems"); %>
                            <% for(int i = 0; i < cart.size(); i+=1) { %>
                                <tr>      
                                    <td><%=cart.get(i).getFoodName()%></td>
                                    <td><%=cart.get(i).getUnitPrice()%></td>
                                    <td><%=cart.get(i).getAmount()%></td>

                                </tr>
                            <% } %>
                            /*
                            question 2 (30%):
                            1. load foodItems list from the current session (the name of the list is "foodItems")
                            2. iterate through the list and output each foodItem as a row of this table
                            */
                            
                    </tbody>
                </table>
            </div>
            <div align="right">
                <input type="submit" class="btn btn-primary">
            </div>

        </main>

        <footer class="pt-4 my-md-5 pt-md-5 border-top">

        </footer>
    </div>

    <img src="./main.png" style="width: 50px; position: fixed; right: 10px; bottom: 10px">
    <img src="./thumbnails_LACMTA_Circle_Red_Line.svg.png" style="width: 20px; position: fixed; right: 10px; bottom: 50px">
    <div style="position: fixed; right: 15px; bottom: 50px; color: white; font-size: 10px" id="numItems">
        <!--
        question 3 (20%):
        output the size of the foodItems list
        -->
        <%=cart.size()%>
    </div>
    

</body>
</html>
