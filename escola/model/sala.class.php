<?php
	class Sala{
		private $nome;
		private $escola;
		
		public function __construct($a,$b){
			$this->nome = $a;
			$this->escola = $b;
		}

		public function setNome($n){
			$this->nome = $n;
		}

		public function getNome(){
			return $this->nome;
		}
		
		public function setEscola($n){
			$this->escola = $n;
		}

		public function getEscola(){
			return $this->escola;
		}

		public function __toString(){
			return "<b>Sala: </b>".$this->nome . " da <b>Escola de código: </b>".$this->escola;
		}	
	}


?>