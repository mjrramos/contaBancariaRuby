class ContaBancaria
    def initialize(proprietario, valor_inicial)
        @proprietario = proprietario
        @valor = valor_inicial
    end

    def transferir(destino, valor)
        if saldo >= valor
            puts "Transferindo"
            debitar(valor)
            destino.depositar(valor)
        else
            raise "Saldo insuficiente"
        end
    end

    def saldo
        @valor
    end

    private def debitar(valor)
        @valor -= valor
    end
    
    protected def depositar(valor)
        @valor += valor
    end
end