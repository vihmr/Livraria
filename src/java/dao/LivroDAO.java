
package dao;

import modelo.Livro;

public class LivroDAO extends GenericDAO<Livro, Long>{
    
    public LivroDAO(){
        super(Livro.class);
    }
    
}
