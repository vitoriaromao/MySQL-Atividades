package br.org.generation.minhafarmacia.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.org.generation.minhafarmacia.model.Produto;

@Repository
public interface ProdutoRepository extends JpaRepository <Produto, Long> {
		
		public List<Produto> findAllByNomeContainingIgnoreCase (String nome);
		
		public List<Produto> findByPrecoBetween (BigDecimal start, BigDecimal end);

	}

