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
public class Binario extends SistemaNumerico {

    public Binario() {
    }

    @Override
    public void capturarEntrada() {
        // Metodo captura a Entrada do Usuário
        if (getInput02().length() > 63) {
            setVerifica(false);
        } else {
            for (int y = getInput02().length() - 1; y >= 0; y--) {
                if (Character.getNumericValue(getInput02().charAt(y)) < 0
                        || Character.getNumericValue(getInput02().charAt(y)) > 1) {
                    setVerifica(false);
                    break;
                } else {
                }
            }
        }
    }

    @Override
    public void imprimir() {
        // Método percorre o vetor resto e imprime o entrada03 da última posição válida do índice até a primeira         
        System.out.print("Binário: ");
        int bits = getI() + 1;
        int mod = bits % 4;
        // Se a quantidade de bits não completar 4 no momento da impressão na tela, 
        // o loop completará com zero a esquerda (Os bits sempre serão agrupados em 4)
        if (mod != 0) {
            while (mod < 4) {
                setConcatena(getConcatena() + "0");
                mod++;
            }
        }
        int y = getI();
        int x = 0;
        while (x <= getI()) {
            // os valores armazenados dentro do vetor resto são exibidos da última posição válida até a primeira           
            setConcatena(getConcatena() + Long.toString(getResto().get(y)));
            x++;
            y--;
        }
        setConcatena("Binario: " + getConcatena() + "\n");
        System.out.print(getConcatena());
        System.out.println("");
    }
}
