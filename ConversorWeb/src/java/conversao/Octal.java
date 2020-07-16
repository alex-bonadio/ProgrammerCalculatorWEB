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
public class Octal extends SistemaNumerico {

    public Octal() {
    }

    @Override
    public void capturarEntrada() {
        // Método captura a capturarEntrada do usuário
        if (getInput02().length() > 21) {
            setVerifica(false);
        } else {
            for (int y = getInput02().length() - 1; y >= 0; y--) {
                if (Character.getNumericValue(getInput02().charAt(y)) < 0
                        || Character.getNumericValue(getInput02().charAt(y)) > 7) {
                    setVerifica(false);
                    break;
                } else {
                }
            }
        }
    }
}
