<?php
	class Professor{
		private $nome;
		private $funcao;
		
		public function __construct($a,$b){
			$this->nome = $a;
			$this->funcao = $b;
			
		}

		public function setNome($n){
			$this->nome = $n;
		}

		public function getNome(){
			return $this->nome;
		}
		
		public function setFuncao($n){
			$this->funcao = $n;
		}

		public function getFuncao(){
			return $this->funcao;
		}
		

		public function __toString(){
			return "<b>Professor: </b>".$this->nome . " de <b>funcao: </b>".$this->funcao;
		}	
	}


?>