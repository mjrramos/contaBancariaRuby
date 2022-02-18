require "./classes/conta_bancaria"
require "./classes/conta_taxa"

conta_jr = ContaComTaxa.new("Jr", 100)
conta_pessoa2 = ContaBancaria.new("Pessoa2", 200)

conta_jr.transferir(conta_pessoa2, 50)

p "Conta Junior"
p conta_jr.saldo
p "Conta Pessoa 2"
p conta_pessoa2.saldo

# teste conta negativo

begin
    conta_jr.transferir(conta_pessoa2, 60) # Falhar
    rescue StandardError => exception
        p "Nao foi possível transferir: #{exception.message}"
end

p "Conta Junior"
p conta_jr.saldo