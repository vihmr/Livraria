/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

/**
 *
 * @author dappo
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Autor.findAll", query = "SELECT a FROM Autor a"),
    @NamedQuery(name = "Autor.findFilter", query = "SELECT a FROM Autor a WHERE a.nome like :filtro")
})
public class Autor implements Serializable {

    @OneToMany(mappedBy = "autor")
    private List<Livro> livros;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    private String nome;
    
    private int idade;
    
    private String endFoto;
    
    private String cidade;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getEndFoto() {
        return endFoto;
    }

    public void setEndFoto(String endFoto) {
        this.endFoto = endFoto;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    
    

    
}
