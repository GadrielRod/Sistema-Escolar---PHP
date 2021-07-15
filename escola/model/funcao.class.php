<?php
	class Funcao{
		private $nome;
		private $salario;
		
		public function __construct($a,$b){
			$this->nome = $a;
			$this->salario = $b;
		}

		public function setNome($n){
			$this->nome = $n;
		}

		public function getNome(){
			return $this->nome;
		}
		
		public function setSalario($n){
			$this->salario = $n;
		}

		public function getSalario(){
			return $this->salario;
		}

		public function __toString(){
			return "<b>Função: </b>".$this->nome . " com <b>Salário de: </b>".$this->salario;
		}	
	}


?>