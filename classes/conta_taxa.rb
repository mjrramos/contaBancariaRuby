class ContaComTaxa < ContaBancaria
    TAXA = 2
        
    def transferir (destino, valor)
        super 
        debitar(TAXA)
    end
end 