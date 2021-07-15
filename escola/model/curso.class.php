<?php
	class Curso{
		private $nome;
		private $valor;
		
		public function __construct($a,$b){
			$this->nome = $a;
			$this->valor = $b;
		}

		public function setNome($n){
			$this->nome = $n;
		}

		public function getNome(){
			return $this->nome;
		}
		
		public function setValor($n){
			$this->valor = $n;
		}

		public function getValor(){
			return $this->valor;
		}
		

		public function __toString(){
			return "<b>Curso: </b>".$this->nome . "<b>Valor: </b>".$this->valor;
		}	
	}


?>