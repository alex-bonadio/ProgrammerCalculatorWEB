<%-- 
    Document   : converter
    Created on : 31/08/2018, 12:22:21
    Author     : Alex
--%>
<%@page import="conversao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Conversor de Sistemas Numéricos Online</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="main.css" type="text/css"/>
    </head>
    <body>
        <div id="div_total">
            <h2 id="h2_titulo">Calculadora de Programador Online</h2>
            <div id="div_resultado">
                <%
                    String numero = request.getParameter("cx_input01");
                    String sistema = request.getParameter("cx_radio");
                    String decimal = "";

                    SistemaNumerico base2 = new Binario();
                    SistemaNumerico base3 = new Ternario();
                    SistemaNumerico base8 = new Octal();
                    SistemaNumerico base10 = new Decimal();
                    SistemaNumerico base16 = new Hexadecimal();

                    if (numero.isEmpty()) {
                        out.print("Digite um Número!<br />");
                    } else {
                        if (sistema.equals("base10")) {
                            // Decimal
                            base10.setInput02(numero);
                            base10.capturarEntrada();
                            if (base10.isVerifica() == false) {
                                out.print("Entrada Inválida <br />");
                                base10.setVerifica(true);
                            } else {
                                base2.setInput01(Long.valueOf(base10.getInput02()));
                                base2.setDivisor((short) 2);             // converterá em binário
                                base2.dividir();
                                base2.imprimir();
                                out.println("<table border='1'>");
                                out.println("<tr>");
                                out.print("<td>" + base2.getConcatena() + "</td>");
                                out.println("</tr>");

                                // TERNARIO
                                //   out.println("<br />");
                                base3.setInput01(Long.valueOf(base10.getInput02()));
                                base3.setDivisor((short) 3);                   // converterá em Ternário
                                base3.dividir();
                                base3.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base3.getConcatena() + "</td>");
                                out.println("</tr>");

                                // OCTAL
                                //    out.println("<br />");
                                base8.setInput01(Long.valueOf(base10.getInput02()));
                                base8.setDivisor((short) 8);                 // converterá em Octal
                                base8.dividir();
                                base8.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base8.getConcatena() + "</td>");
                                out.println("</tr>");
                                
                                // DECIMAL
                                out.println("<tr>");
                                out.print("<td> Decimal: ");
                                out.print(base10.getInput02());
                                out.print("</td>");
                                out.println("</tr>");
                                
                                // HEXADECIMAL
                                //    out.println("<br />");
                                base16.setInput01(Long.valueOf(base10.getInput02()));
                                base16.setDivisor((short) 16);                   // converterá em Hexadecimal
                                base16.dividir();
                                base16.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base16.getConcatena() + "</td>");
                                out.println("</tr>");
                                out.println("</table>");
                            }
                        } else if (sistema.equals("base2")) {
                            // Binário
                            base2.setInput02(numero);
                            base2.capturarEntrada();                // validará a entrada do usuário
                            if (base2.isVerifica() == false) {
                                out.print("Entrada Inválida <br />");
                                base2.setVerifica(true);
                            } else {
                                base2.setBase((short) 2);                   // converterá em Decimal
                                base2.multiplicar();
                                out.println("<table border='1'>");
                                out.println("<tr>");
                                out.print("<td> Decimal: ");
                                out.print(base2.getInput01());
                                out.print("</td>");
                                out.println("</tr>");

                                // TERNARIO
                                // out.println("<br />");
                                base3.setInput01(base2.getInput01());
                                base3.setDivisor((short) 3);                 // converterá em Ternário
                                base3.dividir();
                                base3.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base3.getConcatena()+ "</td>");
                                out.println("</tr>");

                                // OCTAL
                                // out.println("<br />");
                                base8.setInput01(base2.getInput01());
                                base8.setDivisor((short) 8);                  // converterá em Octal
                                base8.dividir();
                                base8.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base8.getConcatena() + "</td>");
                                out.println("</tr>");
                                
                                // HEXADECIMAL
                                // out.println("<br />");
                                base16.setInput01(base2.getInput01());
                                base16.setDivisor((short) 16);                   // converterá em HEXADECIMAL
                                base16.dividir();
                                base16.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base16.getConcatena()+ "</td>");
                                out.println("</tr>");

                                // Binário
                                // out.println("<br />");
                                base2.setDivisor((short) 2);              // converterá em binário
                                base2.dividir();
                                base2.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base2.getConcatena()+ "</td>");
                                out.println("</tr>");
                                out.println("</table>");
                            }
                        } else if (sistema.equals("base3")) {
                            // Ternário
                            base3.setInput02(numero);
                            base3.capturarEntrada();                // validará a entrada do usuário
                            if (base3.isVerifica() == false) {
                                out.print("Entrada Inválida <br />");
                                base3.setVerifica(true);
                            } else {
                                base3.setBase((short) 3);              // converterá em Decimal
                                base3.multiplicar();
                                out.println("<table border='1'>");
                                out.println("<tr>");
                                out.print("<td> Decimal: ");
                                out.print(base3.getInput01());
                                out.print("</td>");
                                out.println("</tr>");

                                // Binário
                               // out.println("<br />");
                                base2.setInput01(base3.getInput01());
                                base2.setDivisor((short) 2);              // converterá em binário
                                base2.dividir();
                                base2.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base2.getConcatena()+ "</td>");
                                out.println("</tr>");

                                // OCTAL
                               // out.println("<br />");
                                base8.setInput01(base3.getInput01());
                                base8.setDivisor((short) 8);                   // converterá em OCTAL
                                base8.dividir();
                                base8.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base8.getConcatena() + "</td>");
                                out.println("</tr>");

                                // HEXADECIMAL
                               // out.println("<br />");
                                base16.setInput01(base3.getInput01());
                                base16.setDivisor((short) 16);                   // converterá em HEXADECIMAL
                                base16.dividir();
                                base16.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base16.getConcatena()+ "</td>");
                                out.println("</tr>");
                                out.println("</table>");
                            }
                        } else if (sistema.equals("base8")) {
                            // OCTAL
                            base8.setInput02(numero);
                            base8.capturarEntrada();                // validará a entrada do usuário
                            if (base8.isVerifica() == false) {
                                out.print("Entrada Inválida <br />");
                                base8.setVerifica(true);
                            } else {
                                base8.setBase((short) 8);               // converterá em Decimal
                                base8.multiplicar();
                                out.println("<table border='1'>");
                                out.println("<tr>");
                                out.print("<td> Decimal: ");
                                out.print(base8.getInput01());
                                out.print("</td>");
                                out.println("</tr>");
                                // Binário
                               // out.println("<br />");
                                base2.setInput01(base8.getInput01());
                                base2.setDivisor((short) 2);               // converterá em binário
                                base2.dividir();
                                base2.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base2.getConcatena()+ "</td>");
                                out.println("</tr>");


                                // TERNARIO
                                // out.println("<br />");
                                base3.setInput01(base8.getInput01());
                                base3.setDivisor((short) 3);                 // converterá em Ternário
                                base3.dividir();
                                base3.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base3.getConcatena()+ "</td>");
                                out.println("</tr>");


                                // HEXADECIMAL
                               // out.println("<br />");
                                base16.setInput01(base8.getInput01());
                                base16.setDivisor((short) 16);                  // converterá em HEXADECIMAL
                                base16.dividir();
                                base16.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base16.getConcatena()+ "</td>");
                                out.println("</tr>");
                                out.println("</table>");
                            }
                        } else {
                            // Hexadecimal
                            base16.setInput02(numero);
                            base16.capturarEntrada();                // validará a entrada do usuário
                            if (base16.isVerifica() == false) {
                                out.print("Entrada Inválida <br />");
                                base16.setVerifica(true);
                            } else {
                                base16.setBase((short) 16);              // converterá em Decimal
                                base16.multiplicar();
                                out.println("<table border='1'>");
                                out.println("<tr>");
                                out.print("<td> Decimal: ");
                                out.print(base16.getInput01());
                                out.print("</td>");
                                out.println("</tr>");

                                // Binário
                               // out.println("<br />");
                                base2.setInput01(base16.getInput01());
                                base2.setDivisor((short) 2);               // converterá em binário
                                base2.dividir();
                                base2.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base2.getConcatena()+ "</td>");
                                out.println("</tr>");

                                // TERNARIO
                               // out.println("<br />");
                                base3.setInput01(base16.getInput01());
                                base3.setDivisor((short) 3);                   // converterá em Ternário
                                base3.dividir();
                                base3.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base3.getConcatena()+ "</td>");
                                out.println("</tr>");

                                // OCTAL
                               // out.println("<br />");
                                base8.setInput01(base16.getInput01());
                                base8.setDivisor((short) 8);                   // converterá em OCTAL
                                base8.dividir();
                                base8.imprimir();
                                out.println("<tr>");
                                out.print("<td>" + base8.getConcatena() + "</td>");
                                out.println("</tr>");
                                out.println("</table>");
                            }
                        }
                    }
                %>
                <p id="p_index"><a href="index.html">Página Inicial</a></p>
            </div>
        </div>
    </body>
</html>
