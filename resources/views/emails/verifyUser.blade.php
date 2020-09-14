<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <title>Welcome Email</title>
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap"
            rel="stylesheet"
        />
    </head>
    <style>
        .wrap-container {
            margin: 0px;
        }
        .wrap-container p {
            margin: 0px;
        }
        .wrap-container img {
            border: 0;
            margin: 0;
        }
        .wrap-container table.m_-tcontainer {
            width: 540px;
            margin: 0 auto;
        }
        .wrap-container table.m_-tcontent {
            width: 500px;
            margin: 0 20px;
        }

        .wrap-container table.m_-tcheader {
            border-bottom: 1px solid #eaeaea;
            padding-top: 10px;
            padding-left: 0px;
            padding-right: 0px;
            padding-bottom: 10px;
            margin: 0;
        }
        .wrap-container table.m_-tclogo {
            margin: 0;
        }
        .wrap-container p.tcMainTitle {
            font-size: 22px;
            font-family: "Roboto", sans-serif;
        }
        .wrap-container #tcLogoImg {
            width: 107px;
            height: 31px;
        }
        .m_-tctitle {
            margin: 0;
            text-align: right;
        }
        .m_-tctitle > p {
            margin: 0;
            font-size: 14px;
            font-family: "arial", "sans-serif";
        }
        .m_-tcverificationMsg {
            padding-left: 0;
            padding-top: 9px;
            padding-bottom: 9px;
            margin: 0;
        }
        .m_-tcverificationMsg p {
            font-size: 14px;
            font-family: "arial", "sans-serif";
        }
        .m_-tcverificationMsg p.m_-tcotp {
            font-size: 18px;
            font-weight: bold;
            padding-top: 18px;
        }
        .m_-tcaccountSecurity {
            padding-left: 0;
            padding-top: 9px;
            padding-bottom: 9px;
            margin: 0;
        }
        .m_-tcaccountSecurity p {
            font-size: 14px;
            font-family: "arial", "sans-serif";
        }
        .m_-tcclosing {
            padding-left: 0;
            padding-top: 9px;
            padding-bottom: 9px;
        }
        .m_-tcclosing p {
            font-size: 14px;
            font-family: "arial", "sans-serif";
        }
    </style>
    <body>
        <div class="wrap-container">
            
            
            <table cellspacing="0" class="m_-tcontainer" cellpadding="0">
                <tbody>
                    <tr>
                        <td>
                            <table
                                cellspacing="0"
                                class="m_-tcontent"
                                cellpadding="0"
                                style="width: 500px; margin: 0 20px;"
                            >
                                <tbody>
                                    <tr>
                                        <td class="m_-tcheader">
                                            <table
                                                cellspacing="0"
                                                cellpadding="0"
                                            >
                                                <tbody>
                                                    <tr>
                                                        <td
                                                            width="250"
                                                            class="m_-tclogo"
                                                        >
                                                            <p
                                                                class="tcMainTitle"
                                                            >
                                                                Priesthood
                                                                Shopping
                                                            </p>
                                                            <!-- <img
                                                                src="https://ci3.googleusercontent.com/proxy/bFyJxNRF0XdtUZwVxivH-4QbioRuP1aJugWPYx_KYkAt6MYJuE-atxjxhqq02Y3yqV9_64Tw--OxN2H-ZvRv3Zspy0kupvKm5Km3fk6af0OYeGGO5ccZmPIeuIkPwcnH7o1amqCbvL5iPmHR=s0-d-e1-ft#https://images-na.ssl-images-amazon.com/images/G/01/x-locale/cs/te/logo._CB485949097_.png"
                                                                class="tcLogoImg"
                                                            /> -->
                                                        </td>
                                                        <td
                                                            width="250"
                                                            class="m_-tctitle"
                                                            valign="top"
                                                        >
                                                            <p>
                                                                Verify your new
                                                                Priesthood
                                                                Shopping account
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="m_-tcverificationMsg">
                                            <p>
                                                To verify your email address,
                                                please use the following One
                                                Time Password (OTP):
                                            </p>
                                            <p class="m_-tcotp">
                                                {{ $user->verifyUser->otp }}
                                            </p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="m_-tcaccountSecurity">
                                            <p>
                                                Do not share this OTP with
                                                anyone. Priesthood Shopping
                                                takes your account security very
                                                seriously. Priesthood Shopping
                                                Customer Service will never ask
                                                you to disclose or verify your
                                                Priesthood Shopping password,
                                                OTP, credit card, or banking
                                                account number. If you receive a
                                                suspicious email with a link to
                                                update your account information,
                                                do not click on the
                                                link—instead, report the email
                                                to Priesthood Shopping for
                                                investigation.
                                            </p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="m_-tcclosing">
                                            <p>
                                                Thank you for shopping with us!
                                                We hope to see you again soon.
                                            </p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
           
            
        </div>
    </body>
</html>
