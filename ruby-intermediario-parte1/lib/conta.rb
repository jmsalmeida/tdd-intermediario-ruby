class Conta
  attr_accessor :numero, :nome, :saldo, :limite

  def initialize(numero, nome, saldo, limite)
    @numero = numero
    @nome = nome
    @saldo = saldo
    @limite = limite
  end  

  def sacar(valor)
    nao_foi_possivel = false

    if valor > saldo
      saldo_limite = saldo + limite
      if saldo_limite > valor
        @saldo = (saldo - valor)
      else

        nao_foi_possivel
      end
    else
      @saldo = saldo - valor
    end
  end

  def depositar(valor)
    @saldo = saldo + valor
  end
end

numero = '010101'
nome = 'James'
saldo = 1000
limite = 500

nova_conta = Conta.new(numero, nome, saldo, limite)

puts nova_conta.sacar(1200)