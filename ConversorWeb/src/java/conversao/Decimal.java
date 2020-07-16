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
public class Decimal extends SistemaNumerico {

    @Override
    public void capturarEntrada() {
        // Metodo valida a Entrada do Usuário
        if (getInput02().length() > 18) {
            setVerifica(false);
        } else {
            for (int y = getInput02().length() - 1; y >= 0; y--) {
                if (Character.getNumericValue(getInput02().charAt(y)) < 0
                        || Character.getNumericValue(getInput02().charAt(y)) > 9) {
                    setVerifica(false);
                    break;
                }
            }
        }
    }
}
