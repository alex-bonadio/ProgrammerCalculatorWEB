package conversao;

import java.util.ArrayList;

/**
 * @author Alex
 */

public abstract class SistemaNumerico {

    private ArrayList<Long> resto = new ArrayList();       // vetor que armazena os restos de cada divisão e o quociente da última divisão
    private long input01;                                 // variável que armazena a capturarEntrada do usuário para fazer a conversão
    private String input02;                              // variável String que valida a capturarEntrada do usuário
    private String concatena = "";                      // concatena o vetor resto em uma string para imprimir no JLabel  
    private boolean verifica = true;
    private short divisor;                            // variável que seta o divisor para fazer a divisão
    private short base;                              // variável que seta a base numérica para conversão usando multiplicação
    private short i;                                // variável que armazena quantas posições foram usadas do vetor resto[]

    public abstract void capturarEntrada(); 

    public void dividir() {
        // Método faz a divisão, armazena os resto de cada divisão e o quociente da última divisão no vetor resto[]
        if (divisor > input01) {
            resto.add(i, input01);
        } else {
            while (input01 >= divisor) {             // Enquanto o entrada03 de capturarEntrada for igual ou maior que o divisor, será executado o loop
                resto.add(i, input01 % divisor); // MOD
                input01 = input01 / divisor;     // são feitas divisões sucessivas  
                i++;                              // o valor do indice (bit) do vetor é incrementado a cada Loop
            }
            resto.add(i, input01);           // após terminar as divisões, o último quociente é armazenado no vetor
        }
    }

    public void multiplicar() {
        // Método percorre a String input02, convertendo os caracteres em número, faz a potenciação, soma e armazena o resultado na variável input01
        int potencia = 0;
        int y = input02.length() - 1;
        while (y >= 0) {
            input01 += Math.pow(base, potencia) * Character.getNumericValue(input02.charAt(y));
            potencia++;
            y--;
        }
        System.out.println("Decimal: " + input01);
    }

    public void imprimir() {
        // Método percorre o vetor resto e imprime o valor da última posição válida do índice até a primeira 
        if (divisor == 3) {
            System.out.print("Ternário: ");
            setConcatena("Ternário: " + getConcatena() + "\n");
        } else {
            System.out.print("Octal: ");
            setConcatena("Octal: " + getConcatena() + "\n");
        }
        int y = i;
        int x = 0;
        while (x <= i) {
            // os valores armazenados dentro do vetor resto são exibidos da última posição válida até a primeira
            concatena = concatena + Long.toString(resto.get(y));
            x++;
            y--;
        }
        System.out.println(concatena);
    }

    public ArrayList<Long> getResto() {
        return resto;
    }

    public void setResto(ArrayList<Long> resto) {
        this.resto = resto;
    }

    public long getInput01() {
        return input01;
    }

    public void setInput01(long input01) {
        this.input01 = input01;
    }

    public String getInput02() {
        return input02;
    }

    public void setInput02(String input02) {
        this.input02 = input02;
    }

    public String getConcatena() {
        return concatena;
    }

    public void setConcatena(String concatena) {
        this.concatena = concatena;
    }

    public boolean isVerifica() {
        return verifica;
    }

    public void setVerifica(boolean verifica) {
        this.verifica = verifica;
    }

    public short getDivisor() {
        return divisor;
    }

    public void setDivisor(short divisor) {
        this.divisor = divisor;
    }

    public short getBase() {
        return base;
    }

    public void setBase(short base) {
        this.base = base;
    }

    public short getI() {
        return i;
    }

    public void setI(short i) {
        this.i = i;
    }
}
