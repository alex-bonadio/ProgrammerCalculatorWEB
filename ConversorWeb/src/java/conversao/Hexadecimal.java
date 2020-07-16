/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conversao;

/**
 *
 * @author Alex
 */
public class Hexadecimal extends SistemaNumerico {

    public Hexadecimal() {
    }

    @Override
    public void capturarEntrada() {
        // Metodo captura a capturarEntrada do usuário  
        // Metodo valida a Entrada do Usuário  
        if (getInput02().length() > 24) {
            setVerifica(false);
        } else {
            for (int y = getInput02().length() - 1; y >= 0; y--) {
                if (Character.getNumericValue(getInput02().charAt(y)) < 0
                        || Character.getNumericValue(getInput02().charAt(y)) > 15) {
                    setVerifica(false);
                    break;
                } else {
                }
            }
        }
    }

    @Override
    public void imprimir() {
        // Método percorre o vetor resto e imprime o valor da última posição válida do índice até a primeira
        System.out.print("Hexadecimal: ");
        int y = getI();
        int x = 0;
        while (x <= getI()) {
            // os valores armazenados dentro do vetor resto são exibidos da última posição válida até a primeira
            if (getResto().get(y) == 15) {
                setConcatena(getConcatena() + "F");
            } else if (getResto().get(y) == 14) {
                setConcatena(getConcatena() + "E");
            } else if (getResto().get(y) == 13) {
                setConcatena(getConcatena() + "D");
            } else if (getResto().get(y) == 12) {
                setConcatena(getConcatena() + "C");
            } else if (getResto().get(y) == 11) {
                setConcatena(getConcatena() + "B");
            } else if (getResto().get(y) == 10) {
                setConcatena(getConcatena() + "A");
            } else {
                setConcatena(getConcatena() + Long.toString(getResto().get(y)));
            }
            x++;
            y--;
        }
        setConcatena("Hexadecimal: " + getConcatena() + "\n");
        System.out.println(getConcatena());
    }
}
